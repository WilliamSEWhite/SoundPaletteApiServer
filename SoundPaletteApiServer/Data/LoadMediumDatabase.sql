USE [SP];
GO


/* ----- USERS ----- */

INSERT INTO dbo.tUsers (Username, Password)
VALUES
    ('wayne34', '(7XG#fqx'),
    ('ybryant', '(7JCIBba'),
    ('teresa67', 'IDxZ%4Ek'),
    ('wardcynthia', 'X%RA1Mht'),
    ('manuel32', 'T^03LKy%'),
    ('johnnywalker', '@4Xm6epj'),
    ('jmartin', '!&3*KJfn'),
    ('benjamin84', '2%2DeOnd'),
    ('floydfelicia', ')z0Q_G+n'),
    ('devon19', '%d71kNnq'),
    ('tarasmith', 'vQ_4ARwm'),
    ('stacypitts', 'D%#6AyPF'),
    ('user2', 'pass2!'),
    ('carol36', 'R(0ENgfW'),
    ('user3', 'pass3!'),
    ('amber27', 'vm+$0Eit'),
    ('petersenclarence', '#Y@@9Fbn'),
    ('kellihenderson', 'f+4O7UtF'),
    ('user1', 'pass1!'),
    ('qjohnston', '%70zSR(n');
SELECT * FROM dbo.tUsers;


/* ----- USER INFO ----- */

INSERT INTO dbo.tUserInfos (userId, locationId, email, phone, dOB, dateCreated)
VALUES
    (1, 2, 'wayne34@example.com', '555-01000', '1986-09-07', '2022-06-29T00:00:00'),
    (2, 2, 'ybryant@example.com', '555-01001', '1983-03-15', '2021-05-03T00:00:00'),
    (3, 2, 'teresa67@example.com', '555-01002', '1993-10-18', '2024-05-03T00:00:00'),
    (4, 5, 'wardcynthia@example.com', '555-01003', '1992-12-11', '2023-06-19T00:00:00'),
    (5, 1, 'manuel32@example.com', '555-01004', '2001-01-09', '2024-11-11T00:00:00'),
    (6, 3, 'johnnywalker@example.com', '555-01005', '1998-01-20', '2022-07-12T00:00:00'),
    (7, 5, 'jmartin@example.com', '555-01006', '2004-03-22', '2023-10-09T00:00:00'),
    (8, 4, 'benjamin84@example.com', '555-01007', '1983-08-10', '2024-05-09T00:00:00'),
    (9, 1, 'floydfelicia@example.com', '555-01008', '1999-05-19', '2025-02-13T00:00:00'),
    (10, 3, 'devon19@example.com', '555-01009', '1991-03-26', '2021-02-22T00:00:00'),
    (11, 1, 'tarasmith@example.com', '555-01010', '1990-04-08', '2024-10-12T00:00:00'),
    (12, 5, 'stacypitts@example.com', '555-01011', '1980-12-05', '2025-04-16T00:00:00'),
    (13, 3, 'user2@example.com', '555-01012', '2005-11-06', '2021-03-24T00:00:00'),
    (14, 2, 'carol36@example.com', '555-01013', '2001-02-07', '2023-11-29T00:00:00'),
    (15, 4, 'user3@example.com', '555-01014', '1992-06-23', '2022-01-07T00:00:00'),
    (16, 5, 'amber27@example.com', '555-01015', '1999-07-21', '2024-07-24T00:00:00'),
    (17, 4, 'petersenclarence@example.com', '555-01016', '1984-02-03', '2023-08-21T00:00:00'),
    (18, 3, 'kellihenderson@example.com', '555-01017', '1998-04-26', '2022-11-14T00:00:00'),
    (19, 3, 'user1@example.com', '555-01018', '1984-09-09', '2021-11-26T00:00:00'),
    (20, 3, 'qjohnston@example.com', '555-01019', '1998-06-19', '2024-11-21T00:00:00');
SELECT * FROM dbo.tUserInfos;


/* ----- POSTS ----- */

INSERT INTO dbo.tPosts (userId, postTypeId, Caption, IsPremium, IsMature, IsDeleted, CreatedDate, PublishDate)
VALUES
    (2, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (13, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'In the middle of a melody and brushstroke.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (9, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (1, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (10, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (9, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (1, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (1, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (17, 1, 'This one`s for the late night creators.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (14, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (1, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (17, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (11, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (11, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (8, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (17, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (16, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 1, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (9, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (9, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 1, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (1, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (10, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (16, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (12, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (12, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (7, 1, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (12, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (11, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (10, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (14, 1, 'This one`s for the late night creators.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     (6, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (17, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (16, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (7, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (7, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (11, 1, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (11, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (12, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (7, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (9, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (14, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (17, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (16, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 1, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (7, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (17, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (16, 3, 'new lyrics in the works! just need some good vocals...', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 3, 'I`ll travel to all the places inspired by this gallary one day', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 3, 'Sunday Funday!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 3, 'Attempting to learn the guitar, looking for some help! DM me please', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (7, 3, 'This position is wayyy more comfortable than it looks', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (13, 3, 'in the recording studio! recording studio aka my bedroom', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (16, 3, 'dorothy was right, there is truly no place like home', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (10, 3, 'The concert was a blur, just like this photo haha!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (2, 3, 'he`s such a good doggoooo :)', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 3, 'There may or may not be a new song. Share like and comment for an early release!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 3, 'just my morning commute guys…', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 3, 'I cant wait to share this melody with you guys! Just needs some lyrics… HMU!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 3, 'inspiration.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 3, 'they call this position the birds eye view I believe', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 3, 'its incredible how someone`s art can just hold your mind hostage like this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 3, 'working on some new album artwork!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (14, 3, 'the barista just gave be a whole sleeve of napkins shortly after this was taken.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (10, 3, 'Art class schedule will be release on Sunday! Thank you for your patiences', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 3, 'tbt. Also hbd mom!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (13, 3, 'SOUND CHECK! SEE YOU GUYS TONITE!!!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 3, 'yes mom, this is work.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (14, 3, 'had requests on how to write music so i thought id share an easy graph :)', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (7, 3, 'mic drop but  literalllyyyy???', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (15, 3, 'How could I not be inspired from this sunlight?!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 3, 'Brenda`s work in progress.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (19, 3, 'a picture of me taking a picture', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 3, 'writing. dreaming. thinking.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (1, 3, 'concentrating on not spilling my discharge water', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (12, 3, 'What my Friday nights are looking like..', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (8, 3, 'This concert has officially completed my life. No need to wake up tmr.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (4, 2, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (8, 2, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 2, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (11, 2, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 2, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (5, 2, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 2, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 2, 'This ones for the late night creators.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (3, 2, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 2, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (16, 2, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (17, 2, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (8, 2, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (12, 2, 'In the middle of a melody and brushstroke.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (18, 2, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (14, 2, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (6, 2, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (14, 2, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 2, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE)),
    (20, 2, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE));
SELECT * FROM dbo.tPosts;


/* ----- POST CONTENT ----- */

INSERT INTO dbo.tPostContents (postId, postTextContent, s3Token, backgroundColour, fontColour)
VALUES
    (1, 'Sound + Sketch = my Sunday ritual.', NULL, '#4414e4', '#620a14'),
    (2, 'Taking a beat to reflect — literally.', NULL, '#9b2324', '#f21149'),
    (3, 'Exploring new chords and colours today.', NULL, '#9dda29', '#f47017'),
    (4, 'Exploring new chords and colours today.', NULL, '#2cc222', '#8e39b9'),
    (5, 'Experimenting with delay and depth.', NULL, '#6c163f', '#dd4880'),
    (6, 'Can art and sound collide more perfectly?', NULL, '#c4e2dd', '#e560cb'),
    (7, 'In the middle of a melody and brushstroke.', NULL, '#1f8b5c', '#1a0351'),
    (8, 'Who wants to collab on a visual album?', NULL, '#7b0e25', '#f31056'),
    (9, 'A new riff, a new line, a new expression.', NULL, '#0eb1ef', '#8953f3'),
    (10, 'Recording vocals and emotions together.', NULL, '#ea1bf3', '#befa86'),
    (11, 'Spilled coffee and creativity.', NULL, '#8a36dd', '#c0fafd'),
    (12, 'Every note and stroke tells a story.', NULL, '#d703e8', '#427f4a'),
    (13, 'In the studio or the studio apartment?', NULL, '#78f60d', '#0a2f01'),
    (14, 'A new riff, a new line, a new expression.', NULL, '#85d18d', '#724d6e'),
    (15, 'Exploring new chords and colours today.', NULL, '#0a8e82', '#54ce0e'),
    (16, 'In the studio or the studio apartment?', NULL, '#a4dba0', '#f52d35'),
    (17, 'Every note and stroke tells a story.', NULL, '#f504fb', '#fc7f73'),
    (18, 'Who wants to collab on a visual album?', NULL, '#935fda', '#b559bd'),
    (19, 'Sound + Sketch = my Sunday ritual.', NULL, '#ca13f9', '#b8c096'),
    (20, 'Just uploaded a rough draft — feedback welcome!', NULL, '#0f5de5', '#7356a7'),
    (21, 'This ones for the late night creators.', NULL, '#740304', '#fc90a1'),
    (22, 'Feeling inspired by the city sounds and sights.', NULL, '#a372e4', '#fbd772'),
    (23, 'Sound + Sketch = my Sunday ritual.', NULL, '#eeee3d', '#437fd0'),
    (24, 'Layering textures like harmonies.', NULL, '#661539', '#52f4ac'),
    (25, 'In the studio or the studio apartment?', NULL, '#5ac4fb', '#25699c'),
    (26, 'Just uploaded a rough draft — feedback welcome!', NULL, '#093066', '#89df7a'),
    (27, 'Just uploaded a rough draft — feedback welcome!', NULL, '#3a112b', '#f49d41'),
    (28, 'Every note and stroke tells a story.', NULL, '#95c8f8', '#780cb2'),
    (29, 'Layering textures like harmonies.', NULL, '#34619e', '#c3a6e7'),
    (30, 'Sketching ideas while looping my beat.', NULL, '#b7a74d', '#398960'),
    (31, 'In the studio or the studio apartment?', NULL, '#2795f0', '#a1b4f2'),
    (32, 'Looking for someone to add vocals to this.', NULL, '#19b5f9', '#5635ed'),
    (33, 'Taking a beat to reflect — literally.', NULL, '#c5d3bf', '#4328b4'),
    (34, 'Recording vocals and emotions together.', NULL, '#b5be2a', '#f06f16'),
    (35, 'Exploring new chords and colours today.', NULL, '#ab61bf', '#bd00ad'),
    (36, 'Just uploaded a rough draft — feedback welcome!', NULL, '#90c4c2', '#75bdb4'),
    (37, 'Exploring new chords and colours today.', NULL, '#cc3d5c', '#40128c'),
    (38, 'Spilled coffee and creativity.', NULL, '#9c2943', '#7e6557'),
    (39, 'Who wants to collab on a visual album?', NULL, '#ad2c4a', '#69731f'),
    (40, 'Feeling inspired by the city sounds and sights.', NULL, '#c41349', '#622b57'),
    (41, 'Just uploaded a rough draft — feedback welcome!', NULL, '#084eb7', '#e98f29'),
    (42, 'Looking for someone to add vocals to this.', NULL, '#8fe88f', '#ad915c'),
    (43, 'Spilled coffee and creativity.', NULL, '#b0291b', '#8b94d8'),
    (44, 'Exploring new chords and colours today.', NULL, '#b5e55d', '#5e1623'),
    (45, 'Sketching ideas while looping my beat.', NULL, '#a2ef77', '#994413'),
    (46, 'Looking for someone to add vocals to this.', NULL, '#f3fe5a', '#229e24'),
    (47, 'Recording vocals and emotions together.', NULL, '#e4e730', '#775f7c'),
    (48, 'Every note and stroke tells a story.', NULL, '#c825be', '#8334db'),
    (49, 'Taking a beat to reflect — literally.', NULL, '#12e733', '#222f3c'),
    (50, 'Sketching ideas while looping my beat.', NULL, '#7bfc1b', '#7483fa'),
    (51, 'Recording vocals and emotions together.', NULL, '#b8dcb8', '#8e53f6'),
    (52, 'Experimenting with delay and depth.', NULL, '#a31845', '#085168'),
    (53, 'Feeling inspired by the city sounds and sights.', NULL, '#1049d8', '#8aeda4'),
    (54, 'Feeling inspired by the city sounds and sights.', NULL, '#03bf0e', '#5575a5'),
    (55, 'Every note and stroke tells a story.', NULL, '#65c156', '#d0736d'),
    (56, 'Layering textures like harmonies.', NULL, '#de6744', '#e9f4da'),
    (57, 'Can art and sound collide more perfectly?', NULL, '#5d8836', '#645dd3'),
    (58, 'Sound + Sketch = my Sunday ritual.', NULL, '#6caeca', '#81e9a1'),
    (59, 'New track, new palette, same passion.', NULL, '#bfb9d3', '#07a0c3'),
    (60, 'A new riff, a new line, a new expression.', NULL, '#10adb1', '#c7e064'),
    (61, 'Experimenting with delay and depth.', NULL, '#ff1e68', '#d5d53a'),
    (62, 'Feeling inspired by the city sounds and sights.', NULL, '#c73cc9', '#a027d1'),
    (63, 'Can art and sound collide more perfectly?', NULL, '#6038ee', '#10b948'),
    (64, 'Posted a concept sketch. Thoughts?', NULL, '#ee74c8', '#177209'),
    (65, 'Experimenting with delay and depth.', NULL, '#e4ceb2', '#48b643'),
    (66, 'Feeling inspired by the city sounds and sights.', NULL, '#f44797', '#e3320f'),
    (67, 'Feeling inspired by the city sounds and sights.', NULL, '#63af0d', '#2e5efc'),
    (68, 'Recording vocals and emotions together.', NULL, '#81e1fb', '#df1162'),
    (69, 'Exploring new chords and colours today.', NULL, '#82590a', '#c19b46'),
    (70, 'This ones for the late night creators.', NULL, '#dc5353', '#2183b0'),                                                                                                                                                                                                                                                                                                                                                                                                                                                (71, 'A new riff, a new line, a new expression.', NULL, '#2465fe', '#2bcc86'),
    (72, 'Just uploaded a rough draft — feedback welcome!', NULL, '#40a9db', '#745055'),
    (73, 'Sound + Sketch = my Sunday ritual.', NULL, '#4a924e', '#11cb16'),
    (74, 'Can art and sound collide more perfectly?', NULL, '#d21e8d', '#af71f9'),
    (75, 'Feeling inspired by the city sounds and sights.', NULL, '#0f60f0', '#1f26db'),
    (76, 'In the studio or the studio apartment?', NULL, '#5204a1', '#24c661'),
    (77, 'Sound + Sketch = my Sunday ritual.', NULL, '#036e01', '#69f1c6'),
    (78, 'Looking for someone to add vocals to this.', NULL, '#fb02a6', '#90e9a7'),
    (79, 'Sound + Sketch = my Sunday ritual.', NULL, '#9f7873', '#12a0f4'),
    (80, 'Posted a concept sketch. Thoughts?', NULL, '#990661', '#5b6dcc'),
    (81, 'Layering textures like harmonies.', NULL, '#f0a56e', '#f935b8'),
    (82, 'Just uploaded a rough draft — feedback welcome!', NULL, '#ba3a49', '#38a168'),
    (83, 'Taking a beat to reflect — literally.', NULL, '#90658e', '#e94919'),
    (84, 'New track, new palette, same passion.', NULL, '#64a8bc', '#9d1db5'),
    (85, 'Sound + Sketch = my Sunday ritual.', NULL, '#7b2fbb', '#0e47e0'),
    (86, 'Recording vocals and emotions together.', NULL, '#e76890', '#685a18'),
    (87, 'Exploring new chords and colours today.', NULL, '#3954a8', '#3a4037'),
    (88, 'Just uploaded a rough draft — feedback welcome!', NULL, '#6fdd03', '#89e068'),
    (89, 'Spilled coffee and creativity.', NULL, '#684908', '#e3e901'),
    (90, 'Layering textures like harmonies.', NULL, '#e092b8', '#aa0e53'),
    (91, 'Looking for someone to add vocals to this.', NULL, '#9950e6', '#58e0ea'),
    (92, 'Exploring new chords and colours today.', NULL, '#d852e9', '#8bff3f'),
    (93, 'New track, new palette, same passion.', NULL, '#860286', '#51a414'),
    (94, 'Looking for someone to add vocals to this.', NULL, '#efba87', '#f249de'),
    (95, 'Feeling inspired by the city sounds and sights.', NULL, '#97f779', '#f06923'),
    (96, 'Posted a concept sketch. Thoughts?', NULL, '#97efe5', '#1cf13e'),
    (97, 'Who wants to collab on a visual album?', NULL, '#b86813', '#db2777'),
    (98, 'New track, new palette, same passion.', NULL, '#0cd1ea', '#d4ba0f'),
    (99, 'Feeling inspired by the city sounds and sights.', NULL, '#72e236', '#e81373'),
    (100, 'A new riff, a new line, a new expression.', NULL, '#bf8c5f', '#fe2985'),
    (101, 'image02.png', NULL, NULL, NULL),
    (102, 'image17.png', NULL, NULL, NULL),
    (103, 'image14.png', NULL, NULL, NULL),
    (104, 'image08.png', NULL, NULL, NULL),
    (105, 'image06.ong', NULL, NULL, NULL),
    (106, 'image05.png', NULL, NULL, NULL),
    (107, 'image13.png', NULL, NULL, NULL),
    (108, 'image15.png', NULL, NULL, NULL),
    (109, 'image27.png', NULL, NULL, NULL),
    (110, 'image04.png', NULL, NULL, NULL),
    (111, 'image18.png', NULL, NULL, NULL),
    (112, 'image10.png', NULL, NULL, NULL),
    (113, 'image21.png', NULL, NULL, NULL),
    (114, 'image09.png', NULL, NULL, NULL),
    (115, 'image16.png', NULL, NULL, NULL),
    (116, 'image26.png', NULL, NULL, NULL),
    (117, 'image20.png', NULL, NULL, NULL),
    (118, 'image29.png', NULL, NULL, NULL),
    (119, 'image19.png', NULL, NULL, NULL),
    (120, 'image12.png', NULL, NULL, NULL),
    (121, 'image25.png', NULL, NULL, NULL),
    (122, 'image01.png', NULL, NULL, NULL),
    (123, 'image03.png', NULL, NULL, NULL),
    (124, 'image24.png', NULL, NULL, NULL),
    (125, 'image30.png', NULL, NULL, NULL),
    (126, 'image23.png', NULL, NULL, NULL),
    (127, 'image22.png', NULL, NULL, NULL),
    (128, 'image28.png', NULL, NULL, NULL),
    (129, 'image07.png', NULL, NULL, NULL),
    (130, 'image11.png', NULL, NULL, NULL),
    (131, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3', NULL, NULL, NULL),
    (132, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3', NULL, NULL, NULL),
    (133, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3', NULL, NULL, NULL),
    (134, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3', NULL, NULL, NULL),
    (135, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3', NULL, NULL, NULL),
    (136, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3', NULL, NULL, NULL),
    (137, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3', NULL, NULL, NULL),
    (138, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3', NULL, NULL, NULL),
    (139, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-9.mp3', NULL, NULL, NULL),
    (140, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-10.mp3', NULL, NULL, NULL),
    (141, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-11.mp3', NULL, NULL, NULL),
    (142, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-12.mp3', NULL, NULL, NULL),
    (143, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3', NULL, NULL, NULL),
    (144, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-14.mp3', NULL, NULL, NULL),
    (145, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-15.mp3', NULL, NULL, NULL),
    (146, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-16.mp3', NULL, NULL, NULL),
    (147, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-17.mp3', NULL, NULL, NULL),
    (148, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-18.mp3', NULL, NULL, NULL),
    (149, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-19.mp3', NULL, NULL, NULL),
    (150, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-20.mp3', NULL, NULL, NULL);
SELECT * FROM dbo.tPostContents;


/* ----- POST COMMENTS ----- */
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (58, 7, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (29, 14, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (29, 1, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (29, 15, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (29, 10, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (29, 20, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (29, 7, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 7, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 16, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 17, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 11, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 2, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 1, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 14, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 20, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 10, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 5, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 18, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 9, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 13, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 6, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (2, 15, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (139, 6, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (139, 3, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (62, 18, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (70, 9, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (4, 19, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (4, 6, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (4, 16, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (4, 4, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (4, 15, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (91, 1, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (91, 9, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (91, 7, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (91, 2, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (91, 13, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (91, 19, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (7, 11, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (8, 16, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (8, 7, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (8, 8, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (100, 19, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (100, 17, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (100, 6, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (100, 15, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (100, 1, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (100, 20, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (100, 14, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (73, 14, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (73, 18, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (73, 5, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (3, 2, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (3, 12, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (3, 8, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (132, 16, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (132, 3, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (16, 20, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 14, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 12, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 9, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 20, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 8, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 19, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 15, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (144, 2, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (54, 15, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (54, 14, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (92, 2, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (92, 1, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 4, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 12, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 6, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 17, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 16, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 3, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 5, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (148, 19, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (42, 13, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (42, 8, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (42, 14, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (42, 15, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (146, 14, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (146, 5, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (86, 2, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (86, 17, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (86, 6, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (34, 19, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (76, 19, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (76, 7, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (76, 15, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (113, 15, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (38, 4, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (38, 8, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (38, 17, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (47, 16, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (149, 7, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (149, 3, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (124, 1, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (99, 9, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (99, 4, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (79, 20, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (117, 13, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (117, 16, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (117, 3, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (142, 20, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (142, 19, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (142, 14, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (95, 13, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (95, 8, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (39, 4, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (39, 20, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (39, 17, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (23, 18, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (24, 6, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (24, 4, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (120, 15, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (120, 11, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (120, 18, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (111, 10, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (111, 3, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (111, 11, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (111, 18, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (21, 16, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (21, 10, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (21, 11, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (21, 2, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (21, 18, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (21, 7, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (9, 6, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (9, 8, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (9, 7, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (9, 11, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (9, 3, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 2, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 16, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 10, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 14, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 8, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 6, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 18, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 4, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 7, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 9, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 3, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 12, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 5, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 11, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 19, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 15, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 17, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 13, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 1, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (81, 20, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (1, 5, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (57, 5, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (57, 11, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (57, 18, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (65, 3, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (65, 8, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (41, 2, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (122, 16, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (122, 6, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (122, 19, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (122, 14, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (122, 20, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (137, 8, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (137, 17, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (137, 1, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (115, 10, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (115, 11, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (115, 16, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (115, 8, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (33, 1, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (33, 16, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (33, 19, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (33, 9, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (33, 7, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (33, 10, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (107, 12, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (107, 5, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (107, 19, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (107, 6, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (107, 16, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (56, 14, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (56, 12, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (126, 1, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (135, 13, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (135, 16, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (135, 19, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (135, 8, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (135, 14, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (135, 20, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (12, 9, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (12, 16, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (19, 9, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (19, 12, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (19, 19, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (19, 8, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (19, 5, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (19, 14, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (19, 3, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (74, 20, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (74, 15, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (74, 6, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (83, 16, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (30, 9, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (30, 10, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (30, 3, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (30, 8, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (30, 19, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (30, 4, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (30, 7, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 15, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 16, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 10, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 13, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 8, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 5, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 12, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 14, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 20, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (18, 11, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (78, 2, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (78, 13, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (78, 10, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (72, 12, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 2, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 13, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 11, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 10, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 1, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 14, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 3, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 7, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 5, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 16, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 12, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 19, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 4, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 18, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 15, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 20, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 17, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 8, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 9, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 6, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 13, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 9, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 15, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 19, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (68, 6, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (28, 12, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (102, 2, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (102, 8, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (102, 18, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (102, 10, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (102, 14, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (60, 10, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (60, 6, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (60, 14, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (60, 8, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (60, 15, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (49, 4, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (49, 17, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (49, 12, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 5, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 20, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 15, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 6, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 7, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 17, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 3, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (17, 9, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 1, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 20, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 3, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 12, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 9, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 18, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 15, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 13, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (123, 11, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (138, 14, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (138, 6, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (138, 19, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (6, 8, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (6, 7, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (108, 5, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (108, 20, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (108, 7, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (108, 10, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (13, 8, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (13, 5, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (131, 16, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (131, 2, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (131, 19, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (131, 17, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (26, 1, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (26, 19, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (26, 16, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (116, 16, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (116, 11, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (77, 12, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (77, 10, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (20, 20, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 15, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 2, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 8, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 1, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 13, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 3, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 4, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 20, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (35, 12, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (98, 1, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (98, 13, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (25, 1, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (59, 15, 'Love the vibe on this one!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (59, 7, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (5, 6, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (88, 3, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (88, 8, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (55, 8, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (55, 18, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (55, 19, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (143, 4, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (143, 12, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (50, 9, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (50, 19, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (50, 20, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (50, 1, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (50, 8, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (50, 7, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 7, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 20, 'I feel the emotion behind this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 3, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 8, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 9, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 17, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 12, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 16, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (121, 1, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (31, 18, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (31, 12, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (90, 9, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (90, 16, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (90, 17, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 18, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 4, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 1, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 15, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 6, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 19, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 20, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 13, 'Collab soon?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 14, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (64, 16, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (61, 14, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (46, 13, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (46, 12, 'Incredible. Feels like it was made just for today.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (125, 18, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (125, 20, 'Instant save. Thanks for sharing.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (125, 16, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (125, 11, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (147, 7, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (147, 1, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (147, 16, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (147, 13, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (15, 8, 'Raw, real, and powerful.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (89, 5, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (89, 3, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (89, 18, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (89, 16, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (89, 7, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (134, 6, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (134, 11, 'You always push creative boundaries!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (134, 1, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 6, 'How did you make that texture/sound happen?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 13, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 14, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 18, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 11, 'Wow, this inspired my latest painting!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 8, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 4, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (37, 20, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (40, 8, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (40, 16, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (40, 15, 'Looped this more times than Id like to admit.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (106, 6, 'This would be perfect for a gallery backdrop.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (114, 9, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (129, 12, 'Really unique sound. Keep it up!', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 4, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 7, 'I can see the story through your art.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 19, 'This hits different after midnight.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 15, 'Following immediately after this.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 6, 'Youve got serious talent.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 2, 'Can I use this in my next piece?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 12, 'Where can I hear more from you?', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 16, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE());
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate)
VALUES (145, 1, 'This gave me goosebumps—beautiful work.', GETUTCDATE());
SELECT * FROM dbo.tPostComments;


/* ----- POST LIKES ----- */

INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (2, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (2, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (2, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (2, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (3, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (3, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (4, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (4, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (4, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (4, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (5, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (5, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (5, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (5, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (5, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (6, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (6, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (6, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (6, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (7, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (8, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (9, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (9, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (9, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (10, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (10, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (10, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (11, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (11, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (11, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (12, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (12, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (12, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (13, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (14, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (15, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (15, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (16, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (18, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (18, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (19, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (20, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (20, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (21, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (22, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (22, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (22, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (23, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (23, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (25, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (25, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (25, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (26, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (27, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (27, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (28, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (28, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (29, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (29, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (31, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (31, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (31, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (32, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (32, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (32, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (34, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (34, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (34, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (34, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (36, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (36, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (36, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (37, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (37, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (37, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (37, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (38, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (38, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (39, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (39, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (40, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (40, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (40, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (40, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (43, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (44, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (44, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (44, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (45, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (45, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (45, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (45, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (46, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (47, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (47, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (47, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (47, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (48, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (48, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (48, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (48, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (48, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (49, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (49, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (50, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (50, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (50, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (50, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (51, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (52, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (52, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (52, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (53, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (53, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (53, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (53, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (54, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (54, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (54, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (54, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (55, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (55, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (56, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (56, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (56, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (56, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (57, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (57, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (57, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (57, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (58, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (58, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (58, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (58, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (59, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (59, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (59, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (59, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (59, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (60, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (60, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (60, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (60, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (61, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (61, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (61, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (63, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (63, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (64, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (64, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (64, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (65, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (66, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (66, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (67, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (68, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (68, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (68, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (68, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (69, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (69, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (69, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (69, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (69, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (70, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (70, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (70, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (71, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (71, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (71, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (71, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (71, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (72, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (72, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (72, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (73, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (73, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (75, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (75, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (75, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (75, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (75, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (76, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (77, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (77, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (77, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (77, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (78, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (78, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (79, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (79, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (80, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (80, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (80, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (80, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (80, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (81, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (81, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (82, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (83, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (83, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (83, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (84, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (84, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (84, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (85, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (85, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (85, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (86, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (86, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (87, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (87, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (87, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (88, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (88, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (88, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (88, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (89, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (89, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (89, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (89, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (89, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (90, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (91, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (92, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (92, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (92, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (92, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (93, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (93, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (93, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (93, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (94, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (94, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (96, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (96, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (96, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (96, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (96, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (98, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (98, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (98, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (99, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (99, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (99, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (100, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (100, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (100, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (100, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (100, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (102, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (102, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (102, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (102, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (102, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (103, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (103, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (103, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (103, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (103, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (104, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (104, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (104, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (105, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (106, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (106, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (106, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (106, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (106, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (107, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (107, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (107, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (108, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (108, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (108, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (108, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (108, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (109, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (112, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (112, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (113, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (113, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (113, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (114, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (115, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (115, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (116, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (118, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (118, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (118, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (118, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (118, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (120, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (120, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (120, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (120, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (121, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (121, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (121, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (121, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (121, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (122, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (123, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (124, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (124, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (125, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (125, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (125, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (125, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (126, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (126, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (126, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (126, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (126, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (127, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (128, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (128, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (128, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (128, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (128, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (129, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (130, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (130, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (130, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (131, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (131, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (131, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (131, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (131, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (132, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (132, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (132, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (132, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (133, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (133, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (134, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (134, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (134, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (134, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (134, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (135, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (135, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (135, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (135, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (135, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (136, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (136, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (136, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (136, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (137, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (137, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (137, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (139, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (140, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (141, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (141, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (142, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (142, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (142, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 11);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 9);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (143, 14);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (144, 19);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (144, 12);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (144, 10);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (145, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (145, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (145, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (146, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (146, 7);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (146, 6);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (146, 17);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (146, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (147, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (147, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (147, 20);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (147, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (148, 2);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (148, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (148, 15);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (148, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (148, 18);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (149, 8);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (149, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (149, 5);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (149, 1);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (149, 4);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (150, 16);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (150, 13);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (150, 3);
INSERT INTO dbo.tPostLikes (PostId, UserId) VALUES (150, 17);
SELECT * FROM dbo.tPostLikes;


/* ----- POST SAVES ----- */

INSERT INTO dbo.tPostSaves (PostId, UserId)
VALUES
    (125, 1),
    (5, 1),
    (2, 1),
    (137, 1),
    (142, 1),
    (106, 1),
    (4, 1),
    (149, 6),
    (136, 3),
    (71, 16),
    (138, 15),
    (74, 12),
    (143, 20),
    (129, 5),
    (111, 18),
    (46, 3),
    (28, 8),
    (25, 8),
    (39, 20),
    (62, 17),
    (50, 9),
    (65, 2),
    (91, 3),
    (35, 9),
    (102, 19),
    (51, 20),
    (11, 2),
    (48, 6),
    (52, 12),
    (59, 1),
    (73, 8),
    (32, 20),
    (90, 6),
    (29, 14),
    (132, 3),
    (88, 10),
    (145, 7),
    (109, 20),
    (124, 8),
    (84, 19),
    (110, 14),
    (146, 19),
    (98, 11),
    (140, 14),
    (12, 5);
SELECT * FROM dbo.tPostSaves;


/* ----- FOLLOWERS ----- */

INSERT INTO dbo.tUserFollowers (FollowerId, FollowingId)
VALUES
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6),
    (1, 8),
    (1, 9),
    (1, 12),
    (1, 13),
    (1, 14),
    (1, 15),
    (1, 17),
    (1, 18),
    (1, 19),
    (2, 1),
    (2, 3),
    (2, 5),
    (2, 6),
    (2, 8),
    (2, 12),
    (2, 13),
    (2, 15),
    (2, 16),
    (2, 17),
    (2, 18),
    (2, 19),
    (2, 20),
    (3, 1),
    (3, 2),
    (3, 5),
    (3, 6),
    (3, 8),
    (3, 9),
    (3, 12),
    (3, 13),
    (3, 15),
    (3, 16),
    (3, 17),
    (3, 18),
    (3, 20),
    (4, 1),
    (4, 3),
    (4, 7),
    (4, 8),
    (4, 9),
    (4, 10),
    (4, 11),
    (4, 14),
    (4, 15),
    (4, 17),
    (4, 19),
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 7),
    (5, 9),
    (5, 11),
    (5, 13),
    (5, 15),
    (5, 16),
    (5, 17),
    (5, 18),
    (5, 19),
    (5, 20),
    (6, 2),
    (6, 4),
    (6, 5),
    (6, 7),
    (6, 8),
    (6, 9),
    (6, 11),
    (6, 12),
    (6, 14),
    (6, 15),
    (6, 18),
    (6, 19),
    (6, 20),
    (7, 1),
    (7, 2),
    (7, 3),
    (7, 8),
    (7, 9),
    (7, 10),
    (7, 12),
    (7, 13),
    (7, 14),
    (7, 15),
    (7, 16),
    (7, 20),
    (8, 1),
    (8, 4),
    (8, 6),
    (8, 9),
    (8, 10),
    (8, 11),
    (8, 12),
    (8, 15),
    (8, 17),
    (8, 18),
    (9, 2),
    (9, 3),
    (9, 4),
    (9, 5),
    (9, 10),
    (9, 11),
    (9, 12),
    (9, 13),
    (9, 14),
    (9, 17),
    (9, 19),
    (9, 20),
    (10, 1),
    (10, 2),
    (10, 6),
    (10, 7),
    (10, 14),
    (10, 16),
    (10, 17),
    (10, 18),
    (10, 19),
    (10, 20),
    (11, 2),
    (11, 3),
    (11, 4),
    (11, 5),
    (11, 7),
    (11, 10),
    (11, 12),
    (11, 16),
    (11, 17),
    (11, 18),
    (11, 19),
    (11, 20),
    (12, 3),
    (12, 4),
    (12, 6),
    (12, 7),
    (12, 9),
    (12, 11),
    (12, 13),
    (12, 14),
    (12, 15),
    (12, 16),
    (12, 17),
    (13, 1),
    (13, 2),
    (13, 4),
    (13, 5),
    (13, 6),
    (13, 8),
    (13, 10),
    (13, 11),
    (13, 12),
    (13, 15),
    (13, 18),
    (14, 1),
    (14, 2),
    (14, 3),
    (14, 5),
    (14, 6),
    (14, 7),
    (14, 8),
    (14, 9),
    (14, 10),
    (14, 11),
    (14, 12),
    (14, 13),
    (14, 15),
    (14, 16),
    (14, 17),
    (14, 18),
    (14, 20),
    (15, 2),
    (15, 4),
    (15, 9),
    (15, 10),
    (15, 12),
    (15, 13),
    (15, 14),
    (15, 16),
    (15, 17),
    (15, 18),
    (15, 20),
    (16, 2),
    (16, 5),
    (16, 8),
    (16, 9),
    (16, 10),
    (16, 15),
    (16, 18),
    (16, 19),
    (17, 2),
    (17, 5),
    (17, 6),
    (17, 7),
    (17, 8),
    (17, 9),
    (17, 12),
    (17, 14),
    (17, 15),
    (17, 16),
    (17, 20),
    (18, 1),
    (18, 2),
    (18, 3),
    (18, 4),
    (18, 5),
    (18, 6),
    (18, 7),
    (18, 8),
    (18, 9),
    (18, 10),
    (18, 11),
    (18, 13),
    (18, 14),
    (18, 16),
    (18, 17),
    (18, 19),
    (19, 2),
    (19, 3),
    (19, 5),
    (19, 8),
    (19, 9),
    (19, 10),
    (19, 12),
    (19, 13),
    (19, 16),
    (19, 17),
    (19, 18),
    (19, 20),
    (20, 1),
    (20, 2),
    (20, 3),
    (20, 5),
    (20, 7),
    (20, 10),
    (20, 11),
    (20, 12),
    (20, 13),
    (20, 14),
    (20, 15),
    (20, 17),
    (20, 19);
SELECT * FROM dbo.tUserFollowers;


/* ----- POST TAGS ----- */

INSERT INTO dbo.tTags (TagName)
VALUES
    ('Nature'),
    ('Urban'),
    ('Vintage');
SELECT * FROM dbo.tTags;

INSERT INTO dbo.tPostTags (PostId, TagId)
VALUES
    (1, 5),
    (2, 5),
    (3, 3),
    (3, 7),
    (3, 9),
    (4, 8),
    (5, 8),
    (5, 7),
    (5, 9),
    (6, 1),
    (6, 6),
    (6, 2),
    (7, 4),
    (8, 6),
    (8, 3),
    (8, 1),
    (9, 7),
    (9, 6),
    (9, 10),
    (10, 1),
    (11, 5),
    (12, 9),
    (13, 9),
    (13, 10),
    (13, 4),
    (14, 6),
    (14, 7),
    (15, 10),
    (15, 9),
    (16, 6),
    (17, 8),
    (18, 5),
    (19, 2),
    (19, 10),
    (20, 3),
    (20, 6),
    (20, 5),
    (21, 8),
    (21, 4),
    (22, 8),
    (22, 6),
    (22, 10),
    (23, 8),
    (24, 8),
    (24, 6),
    (24, 2),
    (25, 1),
    (25, 2),
    (26, 6),
    (27, 2),
    (27, 3),
    (27, 4),
    (28, 3),
    (28, 9),
    (28, 10),
    (29, 9),
    (29, 7),
    (30, 4),
    (30, 7),
    (31, 3),
    (31, 10),
    (31, 7),
    (32, 1),
    (32, 4),
    (33, 10),
    (33, 7),
    (34, 1),
    (34, 4),
    (35, 5),
    (36, 2),
    (36, 10),
    (36, 3),
    (37, 6),
    (37, 4),
    (38, 2),
    (38, 5),
    (39, 8),
    (39, 9),
    (39, 6),
    (40, 7),
    (40, 10),
    (40, 2),
    (41, 6),
    (41, 8),
    (42, 3),
    (42, 5),
    (42, 2),
    (43, 3),
    (43, 6),
    (43, 2),
    (44, 5),
    (45, 3),
    (46, 3),
    (46, 9),
    (47, 7),
    (47, 3),
    (48, 7),
    (48, 10),
    (48, 3),
    (49, 9),
    (49, 3),
    (50, 3),
    (50, 8),
    (50, 5),
    (51, 3),
    (52, 8),
    (52, 1),
    (53, 1),
    (53, 8),
    (54, 4),
    (55, 9),
    (55, 10),
    (56, 8),
    (56, 7),
    (56, 10),
    (57, 8),
    (57, 10),
    (58, 2),
    (59, 1),
    (59, 4),
    (59, 5),
    (60, 5),
    (61, 9),
    (62, 3),
    (62, 8),
    (63, 8),
    (63, 9),
    (63, 2),
    (64, 2),
    (64, 5),
    (64, 6),
    (65, 1),
    (65, 8),
    (65, 4),
    (66, 2),
    (66, 4),
    (67, 1),
    (67, 8),
    (68, 6),
    (68, 2),
    (69, 2),
    (69, 4),
    (70, 10),
    (71, 6),
    (71, 7),
    (71, 3),
    (72, 3),
    (72, 4),
    (72, 9),
    (73, 10),
    (74, 9),
    (74, 5),
    (75, 9),
    (75, 3),
    (75, 6),
    (76, 5),
    (76, 10),
    (76, 9),
    (77, 2),
    (77, 3),
    (77, 7),
    (78, 5),
    (79, 3),
    (79, 10),
    (79, 4),
    (80, 6),
    (81, 7),
    (82, 3),
    (82, 5),
    (83, 7),
    (83, 10),
    (83, 8),
    (84, 2),
    (85, 9),
    (85, 5),
    (86, 6),
    (86, 8),
    (86, 9),
    (87, 10),
    (87, 1),
    (88, 2),
    (88, 8),
    (88, 6),
    (89, 9),
    (90, 4),
    (90, 7),
    (91, 8),
    (92, 6),
    (92, 5),
    (93, 9),
    (93, 3),
    (94, 8),
    (94, 6),
    (94, 1),
    (95, 2),
    (96, 8),
    (96, 1),
    (96, 2),
    (97, 8),
    (98, 1),
    (98, 7),
    (99, 3),
    (100, 5),
    (100, 3),
    (100, 10),
    (101, 6),
    (102, 2),
    (102, 6),
    (103, 3),
    (103, 1),
    (103, 7),
    (104, 5),
    (104, 4),
    (104, 7),
    (105, 2),
    (105, 10),
    (105, 1),
    (106, 8),
    (107, 3),
    (108, 4),
    (108, 9),
    (108, 8),
    (109, 1),
    (110, 6),
    (110, 2),
    (110, 7),
    (111, 3),
    (111, 8),
    (111, 2),
    (112, 7),
    (113, 2),
    (114, 6),
    (115, 5),
    (115, 3),
    (116, 3),
    (116, 10),
    (117, 9),
    (118, 1),
    (118, 3),
    (118, 8),
    (119, 4),
    (119, 3),
    (120, 10),
    (120, 8),
    (121, 2),
    (122, 3),
    (123, 10),
    (124, 7),
    (124, 6),
    (124, 10),
    (125, 3),
    (125, 4),
    (126, 2),
    (126, 4),
    (127, 10),
    (127, 5),
    (127, 1),
    (128, 5),
    (128, 4),
    (128, 9),
    (129, 7),
    (129, 5),
    (129, 1),
    (130, 8),
    (131, 2),
    (131, 4),
    (132, 10),
    (132, 2),
    (133, 1),
    (133, 6),
    (133, 9),
    (134, 7),
    (135, 7),
    (135, 6),
    (135, 3),
    (136, 2),
    (136, 1),
    (137, 2),
    (137, 1),
    (137, 5),
    (138, 1),
    (139, 7),
    (140, 5),
    (140, 9),
    (140, 7),
    (141, 7),
    (141, 2),
    (142, 9),
    (142, 10),
    (142, 3),
    (143, 2),
    (143, 5),
    (144, 9),
    (145, 3),
    (146, 6),
    (146, 7),
    (146, 2),
    (147, 7),
    (147, 4),
    (148, 4),
    (149, 7),
    (150, 8);
SELECT * FROM dbo.tPostTags;


/* ----- USER TAGS ----- */

INSERT INTO dbo.tUserTags (UserId, TagId)
VALUES
    (1, 5),
    (2, 2),
    (3, 3),
    (4, 3),
    (5, 6),
    (5, 9),
    (6, 3),
    (6, 6),
    (7, 5),
    (8, 1),
    (9, 7),
    (9, 5),
    (10, 5),
    (11, 8),
    (12, 9),
    (12, 6),
    (13, 8),
    (14, 6),
    (15, 5),
    (16, 10),
    (17, 4),
    (18, 1),
    (19, 4),
    (20, 8);
SELECT * FROM dbo.tUserTags;


/* ----- CHATROOMS ----- */

INSERT INTO dbo.tChatrooms (ChatroomName, CreatedDate, IsGroupChat)
VALUES
    ( '', '2024-08-21', 0),
    ( '', '2024-12-19', 0),
    ( 'Distributed systematic monitoring', '2025-02-19', 1),
    ( 'Versatile national pricing structure', '2024-12-07', 1),
    ( 'Multi-channeled coherent solution', '2025-04-15', 1),
    ( 'Vision-oriented system-worthy middleware', '2025-01-14', 1),
    ( 'Optimized eco-centric hierarchy', '2024-05-30', 1),
    ( '', '2024-06-20', 0),
    ( 'Horizontal fault-tolerant archive', '2024-06-11', 1),
    ( '', '2025-01-28', 0);
SELECT * FROM dbo.tChatrooms;


/* ----- CHATROOM MEMBERS ----- */

INSERT INTO dbo.tChatroomMembers (ChatroomId, UserId, IsActive)
VALUES
    (1, 19, 1),
    (1, 4, 1),
    (2, 18, 1),
    (2, 10, 1),
    (3, 3, 1),
    (3, 11, 1),
    (3, 9, 1),
    (3, 19, 1),
    (3, 18, 1),
    (3, 5, 1),
    (4, 20, 1),
    (4, 13, 1),
    (4, 11, 1),
    (5, 10, 1),
    (5, 9, 1),
    (5, 14, 1),
    (5, 13, 1),
    (5, 17, 1),
    (5, 12, 1),
    (6, 12, 1),
    (6, 17, 1),
    (6, 10, 1),
    (6, 6, 1),
    (6, 19, 1),
    (6, 5, 1),
    (7, 3, 1),
    (7, 8, 1),
    (7, 12, 1),
    (7, 19, 1),
    (7, 10, 1),
    (8, 15, 1),
    (8, 4, 1),
    (9, 7, 1),
    (9, 17, 1),
    (9, 4, 1),
    (9, 13, 1),
    (9, 10, 1),
    (9, 20, 1),
    (10, 5, 1),
    (10, 11, 1);
SELECT * FROM dbo.tChatroomMembers;


/* ----- MESSAGES ----- */

INSERT INTO dbo.tMessages (Message, SentDate, ChatroomMemberId, IsDeleted)
VALUES
    ('Magazine education until apply newspaper although anything.', '2024-10-14', 1, 0),
    ('Daughter get laugh hour herself maintain.', '2024-09-16', 2, 0),
    ('Me pick Democrat site take.', '2025-03-22', 2, 0),
    ('Leave understand hotel help push surface movie.', '2025-01-03', 2, 0),
    ('Collection stand research ever management rise establish.', '2025-01-24', 3, 0),
    ('Wrong tough not card hit special piece.', '2025-03-09', 3, 0),
    ('Choose office answer soon.', '2025-02-23', 4, 0),
    ('Wish talk customer keep after.', '2025-01-31', 4, 0),
    ('Wife use tough claim.', '2025-01-23', 4, 0),
    ('Near article woman body item teacher hard material.', '2025-02-28', 5, 0),
    ('How tend how within bill let.', '2025-02-21', 5, 0),
    ('Why occur society stay surface manage determine believe.', '2025-03-28', 5, 0),
    ('Call rich action big last whose drive.', '2025-04-01', 6, 0),
    ('Edge evidence compare describe.', '2025-03-17', 6, 0),
    ('Single wall kid outside.', '2025-04-05', 6, 0),
    ('Next without opportunity air respond on year.', '2025-03-07', 7, 0),
    ('Before majority for machine keep.', '2025-03-17', 7, 0),
    ('Discuss here anything policy economy development.', '2025-03-13', 7, 0),
    ('Media everybody a lead year.', '2025-02-27', 8, 0),
    ('Size eight truth true culture focus general thank.', '2025-03-19', 8, 0),
    ('Simple Congress listen letter night machine court recognize.', '2025-04-15', 9, 0),
    ('Office quality military nearly news executive.', '2025-04-02', 10, 0),
    ('Assume life study media.', '2025-03-05', 11, 0),
    ('Offer imagine thought each suggest.', '2024-12-29', 11, 0),
    ('Tonight bar rule by.', '2025-01-03', 11, 0),
    ('Help then writer learn act star understand.', '2025-04-09', 12, 0),
    ('During say everybody unit.', '2025-01-28', 13, 0),
    ('Wife expert whatever someone chance.', '2025-01-12', 13, 0),
    ('Move of unit writer father foreign.', '2024-12-14', 13, 0),
    ('Past let than account section water.', '2025-04-17', 14, 0),
    ('Human exist white prepare themselves.', '2025-04-17', 15, 0),
    ('Nearly enough away home.', '2025-04-16', 15, 0),
    ('Road political into stuff.', '2025-04-15', 15, 0),
    ('Democrat without wife great.', '2025-04-15', 16, 0),
    ('Security in support smile condition lay.', '2025-04-17', 16, 0),
    ('Product under similar sister require itself.', '2025-04-17', 16, 0),
    ('Collection report half born life.', '2025-04-16', 17, 0),
    ('Protect prove work machine prevent.', '2025-04-15', 17, 0),
    ('Responsibility dog happy model economy in standard.', '2025-04-15', 17, 0),
    ('Avoid different read step cover.', '2025-04-17', 18, 0),
    ('Traditional season until ground since term conference.', '2025-04-17', 19, 0),
    ('Natural window personal behind indicate treatment great.', '2025-04-17', 19, 0),
    ('Million group movie among.', '2025-03-04', 20, 0),
    ('Very sense tonight risk.', '2025-04-07', 21, 0),
    ('Writer everyone than another look bad.', '2025-03-07', 21, 0),
    ('Card take day start minute.', '2025-01-20', 22, 0),
    ('Clear chair could.', '2025-03-22', 23, 0),
    ('Enter might mind nation recent least.', '2025-04-16', 23, 0),
    ('Improve social outside side share them.', '2025-03-27', 23, 0),
    ('Authority rock road can mission live picture.', '2025-03-04', 24, 0),
    ('Participant community dream save memory couple.', '2025-03-25', 24, 0),
    ('Reality how course begin medical.', '2025-03-10', 25, 0),
    ('Behind kind sort agency sometimes he president.', '2025-01-26', 25, 0),
    ('Leave great strong pick clear provide court.', '2025-03-08', 25, 0),
    ('My clear board day arrive career sing forward.', '2025-01-05', 26, 0),
    ('Voice administration maybe.', '2025-02-18', 26, 0),
    ('Door success let two.', '2024-09-24', 27, 0),
    ('Growth want husband move agree ability another.', '2025-02-27', 27, 0),
    ('Value street offer.', '2025-01-16', 28, 0),
    ('Sure there when report.', '2025-02-01', 28, 0),
    ('Child green value discover position.', '2024-06-28', 29, 0),
    ('Worry authority song put everybody three.', '2025-03-31', 29, 0),
    ('Up their measure politics.', '2024-07-04', 30, 0),
    ('Agree not result part site.', '2024-09-25', 30, 0),
    ('Cost tonight pressure organization.', '2024-10-01', 30, 0),
    ('Want food anything model hit benefit impact.', '2024-10-26', 31, 0),
    ('Issue prevent person return feel shoulder.', '2025-04-06', 31, 0),
    ('Small key us page different development.', '2024-11-23', 32, 0),
    ('Food evening executive forget instead writer.', '2025-01-12', 33, 0),
    ('Our common issue heavy agent couple.', '2024-11-25', 34, 0),
    ('Prevent Democrat reflect put return rest.', '2024-06-13', 35, 0),
    ('Name knowledge decision.', '2024-10-17', 36, 0),
    ('Serve population within any rise.', '2024-11-17', 37, 0),
    ('Material government American sense.', '2024-07-06', 37, 0),
    ('Value strategy appear will firm threat eight.', '2025-03-07', 38, 0),
    ('Play local market gun these all.', '2025-02-21', 38, 0),
    ('Movement customer everything.', '2025-02-02', 39, 0),
    ('Watch ball citizen generation traditional.', '2025-03-15', 39, 0),
    ('Much source represent himself.', '2025-02-16', 39, 0),
    ('But sometimes hand.', '2025-02-14', 40, 0);
SELECT * FROM dbo.tMessages;

