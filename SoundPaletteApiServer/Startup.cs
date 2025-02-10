
using Microsoft.AspNetCore.Cors.Infrastructure;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.EntityFrameworkCore;
using SoundPaletteApiServer.Data;
using System.IO.Compression;
using System.Net;
using System.Text.Json.Serialization;
using Serilog;
using SoundPaletteApiServer.Facade;
using SoundPaletteApiServer.DbHelpers;
using Microsoft.AspNetCore.Server.Kestrel.Core;

namespace SoundPaletteApiServer
{
    public class Startup
    {
        IConfiguration Configuration { get; }

        IWebHostEnvironment Environment { get; }

        public Startup(IConfiguration configuration, IWebHostEnvironment environment)
        {
            Configuration = configuration;
            Environment = environment;
        }

        public void ConfigureServices(IServiceCollection services)
        {
            // configure serilogger
            var serilogLogger = new LoggerConfiguration()
            .ReadFrom.Configuration(Configuration)
                            .CreateLogger();

            services.AddLogging(builder => { builder.AddSerilog(serilogLogger); });

            services.AddDbContext<SPContext>(options =>
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));

            services.AddRouting(options => options.LowercaseUrls = true);

            // add mvc
            services.AddMvc(options =>
            {
                options.SuppressAsyncSuffixInActionNames = false;
            }).AddJsonOptions(options =>
            {
                var serializerOptions = options.JsonSerializerOptions;
                serializerOptions.PropertyNameCaseInsensitive = true;
                serializerOptions.PropertyNamingPolicy = null;
                serializerOptions.Converters.Add(new JsonStringEnumConverter());
            });


            services.Configure<GzipCompressionProviderOptions>(options => options.Level = CompressionLevel.Optimal);
            services.AddResponseCompression(options =>
            {
                options.EnableForHttps = true;
                options.Providers.Add<GzipCompressionProvider>();
            });
            services.Configure<FormOptions>(formOptions =>
            {
                formOptions.MultipartBodyLengthLimit = int.MaxValue;
            });

            // need next line for the filter to work otherwise comment out:
            // "options.Filters.Add(typeof(RequestContextFilter));" in the services.AddMvc above
            services.AddHttpContextAccessor();

            services.AddScoped<LoginFacade>();
            services.AddScoped<LoginDbHelper>();
            services.AddScoped<UserFacade>();
            services.AddScoped<UserDbHelper>();
            services.AddScoped<LocationFacade>();
            services.AddScoped<LocationDbHelper>();

        }

        public void Configure(IApplicationBuilder app)
        {
            if (Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/error-local-development");
            }
            else
            {
                app.UseExceptionHandler("/error");
                app.UseHsts();
            }

            app.UseStaticFiles();

            app.UseRouting();
            app.UseCors();

            app.UseHttpsRedirection();
            app.UseDefaultFiles();
            app.UseResponseCompression();
            app.UseAuthentication();
            app.UseAuthorization();
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
                endpoints.MapRazorPages();
            });
        }
    }
}
