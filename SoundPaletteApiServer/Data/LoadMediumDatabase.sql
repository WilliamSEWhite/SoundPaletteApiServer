USE [SP];
GO


/* ----- USERS ----- */
SELECT * FROM dbo.tUsers;
INSERT INTO dbo.tUsers (Username, Password)
VALUES
    ('user1', 'password1!'),
    ('user2', 'password2!'),
    ('user3', 'password3!'),
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
    ('carol36', 'R(0ENgfW'),
    ('amber27', 'vm+$0Eit'),
    ('petersenclarence', '#Y@@9Fbn'),
    ('kellihenderson', 'f+4O7UtF'),
    ('qjohnston', '%70zSR(n');
SELECT * FROM dbo.tUsers;


/* ----- USER INFO ----- */
SELECT * FROM dbo.tUserInfos;
INSERT INTO dbo.tUserInfos (userId, locationId, email, phone, dOB, dateCreated)
VALUES
    (1, 3, 'user1@example.com', '555-01018', '1984-09-09', '2021-11-26T00:00:00'),
    (2, 3, 'user2@example.com', '555-01012', '2005-11-06', '2021-03-24T00:00:00'),
    (3, 4, 'user3@example.com', '555-01014', '1992-06-23', '2022-01-07T00:00:00'),
    (4, 2, 'wayne34@example.com', '555-01000', '1986-09-07', '2022-06-29T00:00:00'),
    (5, 2, 'ybryant@example.com', '555-01001', '1983-03-15', '2021-05-03T00:00:00'),
    (6, 2, 'teresa67@example.com', '555-01002', '1993-10-18', '2024-05-03T00:00:00'),
    (7, 5, 'wardcynthia@example.com', '555-01003', '1992-12-11', '2023-06-19T00:00:00'),
    (8, 1, 'manuel32@example.com', '555-01004', '2001-01-09', '2024-11-11T00:00:00'),
    (9, 3, 'johnnywalker@example.com', '555-01005', '1998-01-20', '2022-07-12T00:00:00'),
    (10, 5, 'jmartin@example.com', '555-01006', '2004-03-22', '2023-10-09T00:00:00'),
    (11, 4, 'benjamin84@example.com', '555-01007', '1983-08-10', '2024-05-09T00:00:00'),
    (12, 1, 'floydfelicia@example.com', '555-01008', '1999-05-19', '2025-02-13T00:00:00'),
    (13, 3, 'devon19@example.com', '555-01009', '1991-03-26', '2021-02-22T00:00:00'),
    (14, 1, 'tarasmith@example.com', '555-01010', '1990-04-08', '2024-10-12T00:00:00'),
    (15, 5, 'stacypitts@example.com', '555-01011', '1980-12-05', '2025-04-16T00:00:00'),
    (16, 2, 'carol36@example.com', '555-01013', '2001-02-07', '2023-11-29T00:00:00'),
    (17, 5, 'amber27@example.com', '555-01015', '1999-07-21', '2024-07-24T00:00:00'),
    (18, 4, 'petersenclarence@example.com', '555-01016', '1984-02-03', '2023-08-21T00:00:00'),
    (19, 3, 'kellihenderson@example.com', '555-01017', '1998-04-26', '2022-11-14T00:00:00'),
    (20, 3, 'qjohnston@example.com', '555-01019', '1998-06-19', '2024-11-21T00:00:00');
SELECT * FROM dbo.tUserInfos;


/* ----- USER PROFILE ----- */
SELECT * FROM dbo.tUserProfiles;
INSERT INTO dbo.tUserProfiles (userId, bio, picture)
VALUES
    (1, 'Painter | Digital Artist | Creator. Capturing moments through color & texture. Commissions open', '/my/profilePic.jpg'),
    (2, 'Words are my canvas. Sharing stories, thoughts, and raw emotions', '/my/profilePic.jpg'),
    (3, 'Beatmaker | Producer | Mixer. Turning ideas into tracks. Always down for collabs – hit me up!', '/my/profilePic.jpg'),
    (4, 'Sharing my soul through sound. New single out now!', '/my/profilePic.jpg'),
    (5, 'Illustrator with a passion for surreal art. Currently working on a graphic novel.', '/my/profilePic.jpg'),
    (6, 'Singer-songwriter. Acoustic vibes and honest lyrics. Coffee-fueled creativity.', '/my/profilePic.jpg'),
    (7, 'Photography and poetry lover. Capturing stories with every click.', '/my/profilePic.jpg'),
    (8, 'Multi-instrumentalist blending jazz with lo-fi textures.', '/my/profilePic.jpg'),
    (9, 'Urban sketcher | Muralist | Exploring identity through line and form.', '/my/profilePic.jpg'),
    (10, 'Electronic producer. Creating atmospheres and emotions with synths.', '/my/profilePic.jpg'),
    (11, 'Indie filmmaker and visual storyteller. DM me to collab!', '/my/profilePic.jpg'),
    (12, 'Writing music and filming life’s little details. A creative in constant motion.', '/my/profilePic.jpg'),
    (13, 'Painter of dreams and digital landscapes. Sometimes I sculpt.', '/my/profilePic.jpg'),
    (14, 'Designing immersive worlds through soundscapes. Let’s build together.', '/my/profilePic.jpg'),
    (15, 'Creative director & collage artist. Passionate about visual storytelling.', '/my/profilePic.jpg'),
    (16, 'Aspiring author and podcast host. Sharing life, one word at a time.', '/my/profilePic.jpg'),
    (17, 'Pop vocalist and vocal coach. Empowering others through music.', '/my/profilePic.jpg'),
    (18, 'Sound engineer with a love for analog gear and crisp recordings.', '/my/profilePic.jpg'),
    (19, 'Visual artist with a focus on mixed media and feminist themes.', '/my/profilePic.jpg'),
    (20, 'Just a creative soul making noise and colour in the digital space.', '/my/profilePic.jpg');
SELECT * FROM dbo.tUserProfiles;


/* ----- POSTS ----- */
SELECT * FROM dbo.tPosts;
INSERT INTO dbo.tPosts (userId, postTypeId, Caption, IsPremium, IsMature, IsDeleted, CreatedDate, PublishDate)
VALUES
    (2, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (13, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'In the middle of a melody and brushstroke.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (9, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (1, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (10, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (9, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (1, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (1, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (17, 1, 'This one`s for the late night creators.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (14, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (1, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (17, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (11, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (11, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (8, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (17, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (16, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 1, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (9, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (9, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 1, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (1, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (10, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (16, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 1, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (12, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (12, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (7, 1, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (12, 1, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (11, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (10, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (14, 1, 'This one`s for the late night creators.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    (6, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (17, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (16, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 1, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (7, 1, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (7, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (11, 1, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (11, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (12, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (7, 1, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (9, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 1, 'Sound + Sketch = my Sunday ritual.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 1, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (14, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 1, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 1, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 1, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (17, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'Exploring new chords and colours today.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (16, 1, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 1, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (7, 1, 'Who wants to collab on a visual album?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 1, 'New track, new palette, same passion.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 1, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (17, 1, 'A new riff, a new line, a new expression.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (16, 3, 'new lyrics in the works! just need some good vocals...', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 3, 'I`ll travel to all the places inspired by this gallary one day', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 3, 'Sunday Funday!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 3, 'Attempting to learn the guitar, looking for some help! DM me please', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (7, 3, 'This position is wayyy more comfortable than it looks', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (13, 3, 'in the recording studio! recording studio aka my bedroom', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (16, 3, 'dorothy was right, there is truly no place like home', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (10, 3, 'The concert was a blur, just like this photo haha!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (2, 3, 'he`s such a good doggoooo :)', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 3, 'There may or may not be a new song. Share like and comment for an early release!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 3, 'just my morning commute guys…', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 3, 'I cant wait to share this melody with you guys! Just needs some lyrics… HMU!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 3, 'inspiration.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 3, 'they call this position the birds eye view I believe', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 3, 'its incredible how someone`s art can just hold your mind hostage like this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 3, 'working on some new album artwork!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (14, 3, 'the barista just gave be a whole sleeve of napkins shortly after this was taken.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (10, 3, 'Art class schedule will be release on Sunday! Thank you for your patiences', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 3, 'tbt. Also hbd mom!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (13, 3, 'SOUND CHECK! SEE YOU GUYS TONITE!!!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 3, 'yes mom, this is work.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (14, 3, 'had requests on how to write music so i thought id share an easy graph :)', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (7, 3, 'mic drop but  literalllyyyy???', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (15, 3, 'How could I not be inspired from this sunlight?!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 3, 'Brenda`s work in progress.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (19, 3, 'a picture of me taking a picture', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 3, 'writing. dreaming. thinking.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (1, 3, 'concentrating on not spilling my discharge water', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (12, 3, 'What my Friday nights are looking like..', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (8, 3, 'This concert has officially completed my life. No need to wake up tmr.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (4, 2, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (8, 2, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 2, 'Sketching ideas while looping my beat.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (11, 2, 'Recording vocals and emotions together.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 2, 'Spilled coffee and creativity.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (5, 2, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 2, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 2, 'This ones for the late night creators.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (3, 2, 'Looking for someone to add vocals to this.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 2, 'Just uploaded a rough draft — feedback welcome!', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (16, 2, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (17, 2, 'Posted a concept sketch. Thoughts?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (8, 2, 'Taking a beat to reflect — literally.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (12, 2, 'In the middle of a melody and brushstroke.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (18, 2, 'Experimenting with delay and depth.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (14, 2, 'Every note and stroke tells a story.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (6, 2, 'Can art and sound collide more perfectly?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (14, 2, 'Feeling inspired by the city sounds and sights.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 2, 'Layering textures like harmonies.', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME)),
    (20, 2, 'In the studio or the studio apartment?', 0, 0, 0, CAST(GETUTCDATE() AS DATETIME), CAST(GETUTCDATE() AS DATETIME));
SELECT * FROM dbo.tPosts;


/* ----- POST CONTENT ----- */
SELECT * FROM dbo.tPostContents;
INSERT INTO dbo.tPostContents (postId, postTextContent, s3Token, backgroundColour, fontColour)
VALUES
(1, 'Melodies on canvas, colours in chords.', NULL, '#c527bd', '#e4154c'),
(2, 'My brushes hum, my chords dance.', NULL, '#9d1e3f', '#9e3047'),
(3, 'Scribbling beats between thoughts.', NULL, '#41651f', '#55fc99'),
(4, 'Sonic stories in acrylic strokes.', NULL, '#8c493d', '#f501b2'),
(5, 'Freestyling with ink and imagination.', NULL, '#56148a', '#25f9d5'),
(6, 'Where rhythms meet reflections.', NULL, '#dc2800', '#2b3674'),
(7, 'Painting silence with loops and layers.', NULL, '#4832c9', '#1cb7e4'),
(8, 'Creative chaos: my favourite vibe.', NULL, '#a9ef45', '#fbc11a'),
(9, 'Basslines and brushstrokes collide here.', NULL, '#6bbfc5', '#33e326'),
(10, 'Finding harmony in hues and harmonics.', NULL, '#87f47c', '#ad3a9d'),
(11, 'Just vibing with synths and sketchpads.', NULL, '#57591a', '#0b4b4e'),
(12, 'Looped a melody, drafted a dream.', NULL, '#56af5d', '#ca87bf'),
(13, 'Mixing textures like a soundboard.', NULL, '#1a1bba', '#c100f6'),
(14, 'Each note is a new colour today.', NULL, '#7f9881', '#8ada35'),
(15, 'Rough sketch, raw sound, real me.', NULL, '#901bd8', '#89a17c'),
(16, 'Harmonizing paint with poetry.', NULL, '#7eb879', '#f7b418'),
(17, 'Jamming ideas into forms and frequencies.', NULL, '#cb2f08', '#d049d9'),
(18, 'Where vision meets revision.', NULL, '#de64d1', '#fdf6e1'),
(19, 'My track just got a visual twin.', NULL, '#57a075', '#292f77'),
(20, 'Layered sounds, layered meanings.', NULL, '#12f72f', '#4a494e'),
(21, 'Recorded imperfections make the perfect take.', NULL, '#e57db6', '#414839'),
(22, 'Collage of chords and concepts.', NULL, '#483b76', '#a863a5'),
(23, 'Pencilling in progress, literally.', NULL, '#4b2e89', '#dca044'),
(24, 'Musical musings meet visual vibes.', NULL, '#0b4330', '#491cf1'),
(25, 'Brushstrokes that echo beats.', NULL, '#7bfc61', '#dc9bb5'),
(26, 'Turning feelings into frequencies and frames.', NULL, '#e1ea5b', '#6838ad'),
(27, 'Soundtrack of a sketchbook.', NULL, '#90f20f', '#b65d61'),
(28, 'Improvising on both canvas and console.', NULL, '#e5a250', '#81664e'),
(29, 'Today’s vibe: unfiltered expression.', NULL, '#a93510', '#6399b4'),
(30, 'Freehand meets freestyle.', NULL, '#85a25e', '#e5bcc1'),
(31, 'Making art out of mistakes.', NULL, '#600a5e', '#92ca69'),
(32, 'Sketch. Play. Repeat.', NULL, '#ebf4b4', '#dfad9c'),
(33, 'Textures that echo through headphones.', NULL, '#86aa00', '#d311cf'),
(34, 'Painting with a rhythm.', NULL, '#97a2a2', '#4d9a53'),
(35, 'Syncing strokes with soundwaves.', NULL, '#7c6791', '#6df419'),
(36, 'No rules, just resonance.', NULL, '#093e19', '#97614e'),
(37, 'Each layer is a lyric.', NULL, '#7630fb', '#302596'),
(38, 'Dreams drafted in decibels and ink.', NULL, '#8a0cd9', '#9965ee'),
(39, 'Looping through the palette of emotion.', NULL, '#8b27c9', '#130710'),
(40, 'My workspace? Just vibes and vision.', NULL, '#435448', '#a06bea'),
(41, 'Creativity: now in surround sound.', NULL, '#133cff', '#6af4b8'),
(42, 'Artistic spillover in progress.', NULL, '#7093b4', '#84c097'),
(43, 'Echoes of inspiration in every frame.', NULL, '#a220e3', '#a5f2af'),
(44, 'Still sketching, still sampling.', NULL, '#4c217f', '#664e4e'),
(45, 'Drawing the chorus of today.', NULL, '#08eb36', '#754a6f'),
(46, 'Uploading inspiration in real time.', NULL, '#b9bcc7', '#b72c90'),
(47, 'Another rough take, another real moment.', NULL, '#1abb82', '#c6c065'),
(48, 'Colour grading my mood.', NULL, '#94a3ce', '#d39f76'),
(49, 'Every chord finds its canvas.', NULL, '#427a51', '#79e52f'),
(50, 'Mic check, brush check.', NULL, '#f1e640', '#c446b4'),
(51, 'Creative fusion happening here.', NULL, '#4a3c05', '#512685'),
(52, 'From silence to splash in seconds.', NULL, '#52ca8c', '#392877'),
(53, 'Time to remix my sketchbook.', NULL, '#5bd21f', '#e520ee'),
(54, 'Sound-checking my soul.', NULL, '#eb8cda', '#952304'),
(55, 'Pitched a hue, sketched a hook.', NULL, '#c91732', '#8df6f6'),
(56, 'No map, just melody and motion.', NULL, '#45e082', '#0b2734'),
(57, 'Collaboration canvas is wide open.', NULL, '#dbe7b9', '#158a79'),
(58, 'Art jams over coffee and chords.', NULL, '#8c5adf', '#1fad2d'),
(59, 'Prepping the next track with a twist of turquoise.', NULL, '#ebbef8', '#7c4032'),
(60, 'Doodling to the beat of my own drum.', NULL, '#c8a8b5', '#ad6ad0'),
(61, 'Recording a vibe, not just a verse.', NULL, '#879604', '#c44f63'),
(62, 'My gallery starts with a loop.', NULL, '#213016', '#aa7244'),
(63, 'Late night layering session.', NULL, '#86aece', '#950a48'),
(64, 'Brush dipped, mic flipped.', NULL, '#cf31f6', '#075b0f'),
(65, 'Sketches of sound, whispers of paint.', NULL, '#26c1a5', '#8f9005'),
(66, 'Post-production meets post-modernism.', NULL, '#ab632d', '#845cf7'),
(67, 'Nothing’s finished, everything’s expressive.', NULL, '#51a6e5', '#a61ec9'),
(68, 'Palette in one hand, passion in the other.', NULL, '#cd548c', '#cf9945'),
(69, 'Soundtrack to my scattered thoughts.', NULL, '#4aeb03', '#f7bc9c'),
(70, 'Tuning my canvas.', NULL, '#2dc616', '#e0957b'),
(71, 'Vocal takes and visual breaks.', NULL, '#3c08f8', '#ac57d0'),
(72, 'Art in draft mode. Just like me.', NULL, '#18219e', '#6deeab'),
(73, 'Colourful chords and chaotic charm.', NULL, '#805c11', '#e6eec4'),
(74, 'Sampling silence between strokes.', NULL, '#6c15ee', '#39f2bd'),
(75, 'Fresh drop: feelings.', NULL, '#e3a47d', '#e84def'),
(76, 'Shared my process, not just the product.', NULL, '#11e574', '#69d1c0'),
(77, 'Catching creativity before it fades.', NULL, '#6aeeff', '#1a2001'),
(78, 'Storyboarded a melody today.', NULL, '#9827ca', '#6c983d'),
(79, 'Painting what my track can’t say.', NULL, '#e87f4c', '#c734d6'),
(80, 'Echoed thoughts in a colourful key.', NULL, '#67818d', '#e59faf'),
(81, 'New post. New pulse.', NULL, '#77a24f', '#646ad2'),
(82, 'Syncing sound with sentiment.', NULL, '#36c23c', '#96016a'),
(83, 'That moment when art makes noise.', NULL, '#1506ec', '#d800d7'),
(84, 'Trying a new angle. Visually. Sonically.', NULL, '#b5014d', '#028309'),
(85, 'Art doesn’t need perfection. Just honesty.', NULL, '#805fcb', '#02cf6c'),
(86, 'Posted what I couldn’t put into words.', NULL, '#4b16a4', '#076f91'),
(87, 'Creating the kind of noise I need to hear.', NULL, '#01c0c3', '#c470da'),
(88, 'Brushstroke basslines incoming.', NULL, '#aa8062', '#5e40cf'),
(89, 'Vocal scratch meets visual patch.', NULL, '#afc146', '#c8e164'),
(90, 'Painting progress, one track at a time.', NULL, '#842675', '#89f210'),
(91, 'Sketching soundscapes with loops.', NULL, '#61c8c3', '#ed1cd0'),
(92, 'The overlap of art and audio.', NULL, '#1423a6', '#679b0c'),
(93, 'Just me, the beat, and some paint splatter.', NULL, '#262c9f', '#08eb5c'),
(94, 'Scribbled some lyrics, then sketched a vibe.', NULL, '#b4f0e7', '#145afa'),
(95, 'Each colour tells a story in F major.', NULL, '#8b7d88', '#3e23d8'),
(96, 'Creating beyond boundaries.', NULL, '#6ebb32', '#b6c983'),
(97, 'A sketch turned single.', NULL, '#304b0b', '#748968'),
(98, 'Notes and nudes (on canvas, of course).', NULL, '#333bd6', '#eab46b'),
(99, 'Inspiration spilled everywhere again.', NULL, '#63428d', '#076ad1'),
(100, 'From first take to first stroke.', NULL, '#800ad0', '#886532'),
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


/* ----- POST USER TAGS ----- */
SELECT * FROM dbo.tPostUserTags;
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (1, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (1, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (3, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (3, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (4, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (4, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (4, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (4, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (5, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (5, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (5, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (8, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (9, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (9, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (9, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (9, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (10, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (10, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (12, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (13, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (13, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (13, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (13, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (14, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (16, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (16, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (17, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (17, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (17, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (17, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (18, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (18, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (19, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (20, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (20, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (21, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (22, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (24, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (25, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (25, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (25, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (25, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (26, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (26, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (26, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (27, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (27, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (27, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (30, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (32, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (32, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (33, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (34, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (34, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (36, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (36, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (37, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (37, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (38, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (39, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (39, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (40, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (40, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (40, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (40, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (41, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (43, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (44, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (44, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (44, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (45, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (45, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (47, 5);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (47, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (47, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (47, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (52, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (52, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (53, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (55, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (56, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (58, 5);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (58, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (58, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (59, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (61, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (61, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (63, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (64, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (64, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (64, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (65, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (65, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (66, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (66, 5);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (67, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (67, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (69, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (69, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (72, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (72, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (72, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (73, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (73, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (75, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (75, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (77, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (78, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (78, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (78, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (78, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (79, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (79, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (80, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (81, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (81, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (81, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (81, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (82, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (82, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (83, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (83, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (83, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (84, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (84, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (84, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (86, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (86, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (87, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (87, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (87, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (88, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (89, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (89, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (89, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (90, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (92, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (92, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (93, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (93, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (94, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (94, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (94, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (96, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (97, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (98, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (98, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (99, 5);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (99, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (99, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (100, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (100, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (100, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (101, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (101, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (102, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (102, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (102, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (103, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (103, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (103, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (104, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (104, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (104, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (104, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (107, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (111, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (111, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (112, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (113, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (114, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (114, 5);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (114, 12);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (114, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (115, 5);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (115, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (116, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (116, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (116, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (116, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (117, 5);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (117, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (117, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (117, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (118, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (118, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (118, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (119, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (120, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (120, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (121, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (122, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (122, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (122, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (122, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (123, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (124, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (125, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (125, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (125, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (126, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (126, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (128, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (128, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (129, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (129, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (129, 10);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (130, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (130, 9);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (131, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (131, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (131, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (133, 7);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (133, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (134, 2);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (134, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (134, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (134, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (138, 13);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (139, 11);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (139, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (139, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (143, 20);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (144, 4);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (144, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (144, 16);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (145, 1);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (145, 3);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (145, 6);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (145, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (146, 15);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (146, 17);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (146, 18);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (146, 19);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (150, 8);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (150, 14);
INSERT INTO dbo.tPostUserTags (postId, userId) VALUES (150, 15);
SELECT * FROM dbo.tPostUserTags;


/* ----- POST COMMENTS ----- */
SELECT * FROM dbo.tPostComments;
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
SELECT * FROM dbo.tPostLikes;
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
SELECT * FROM dbo.tPostSaves;
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
SELECT * FROM dbo.tUserFollowers;
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
SELECT * FROM dbo.tUserTags;
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
SELECT * FROM dbo.tChatrooms;
INSERT INTO dbo.tChatrooms (ChatroomName, CreatedDate, IsGroupChat)
VALUES
    ('Duet with Destiny', '2024-08-21', 0),
    ('Sketch & Sip', '2024-12-19', 0),
    ('Beatmakers Anonymous', '2025-02-19', 1),
    ('Collab Canvas', '2024-12-07', 1),
    ('The Sound Lab', '2025-04-15', 1),
    ('Brushstroke Collective', '2025-01-14', 1),
    ('Artwave Assembly', '2024-05-30', 1),
    ('Lyrics in Progress', '2024-06-20', 0),
    ('Studio Sessions', '2024-06-11', 1),
    ('Colour Theory Talk', '2025-01-28', 0);
SELECT * FROM dbo.tChatrooms;


/* ----- CHATROOM MEMBERS ----- */
SELECT * FROM dbo.tChatroomMembers;
INSERT INTO dbo.tChatroomMembers (ChatroomId, UserId, IsActive)
VALUES
    (1, 1, 1),
    (1, 4, 1),
    (2, 18, 1),
    (2, 10, 1),
    (3, 3, 1),
    (3, 1, 1),
    (3, 9, 1),
    (3, 19, 1),
    (3, 18, 1),
    (3, 5, 1),
    (4, 20, 1),
    (4, 1, 1),
    (4, 11, 1),
    (5, 10, 1),
    (5, 9, 1),
    (5, 14, 1),
    (5, 1, 1),
    (5, 17, 1),
    (5, 12, 1),
    (6, 12, 1),
    (6, 17, 1),
    (6, 1, 1),
    (6, 6, 1),
    (6, 19, 1),
    (6, 5, 1),
    (7, 3, 1),
    (7, 8, 1),
    (7, 12, 1),
    (7, 19, 1),
    (7, 1, 1),
    (8, 15, 1),
    (8, 4, 1),
    (9, 7, 1),
    (9, 17, 1),
    (9, 4, 1),
    (9, 13, 1),
    (9, 10, 1),
    (9, 20, 1),
    (10, 5, 1),
    (10, 1, 1);
SELECT * FROM dbo.tChatroomMembers;


/* ----- MESSAGES ----- */
SELECT * FROM dbo.tMessages;
INSERT INTO dbo.tMessages (Message, SentDate, ChatroomMemberId, IsDeleted)
VALUES
    ('Should we try layering vocals next?', '2025-04-06', 2, 0),
    ('That harmony came out better than I expected!', '2025-03-25', 1, 0),
    ('Love how our voices blend on that chorus.', '2025-01-03', 2, 0),
    ('Next session: gouache or charcoal?', '2025-02-22', 4, 0),
    ('This playlist goes so well with painting!', '2024-11-12', 4, 0),
    ('That bassline from yesterday is stuck in my head!', '2024-08-14', 9, 0),
    ('Anyone got a sample pack to recommend?', '2024-08-21', 7, 0),
    ('Just uploaded a new beat to our shared folder.', '2024-09-06', 8, 0),
    ('Merging your style with mine was so fun!', '2025-02-14', 11, 0),
    ('I can send you the layered PSD file.', '2024-08-04', 13, 0),
    ('I can send you the layered PSD file.', '2024-11-04', 11, 0),
    ('Trying out a new synth plugin tonight.', '2024-08-17', 16, 0),
    ('Can someone record a quick bass loop?', '2024-09-02', 19, 0),
    ('Trying out a new synth plugin tonight.', '2025-03-14', 16, 0),
    ('I posted my submission—feedback welcome!', '2024-10-29', 25, 0),
    ('Colour palette suggestions for sadness?', '2025-03-20', 23, 0),
    ('Let’s do a live stream critique session?', '2025-01-05', 30, 0),
    ('Calling all visual artists—collab prompt incoming!', '2024-10-15', 30, 0),
    ('Who''s in for a zine project?', '2024-12-26', 28, 0),
    ('Calling all visual artists—collab prompt incoming!', '2025-04-14', 28, 0),
    ('Struggling with this bridge, can I get thoughts?', '2025-01-31', 32, 0),
    ('Chorus is locked in—now on to verse two.', '2024-08-19', 32, 0),
    ('Struggling with this bridge, can I get thoughts?', '2025-01-16', 31, 0),
    ('Bring that acoustic—you know the one!', '2024-09-08', 36, 0),
    ('Can we test the mic before everyone arrives?', '2024-10-21', 37, 0),
    ('Bring that acoustic—you know the one!', '2024-10-18', 33, 0),
    ('Split-complementary or triadic for contrast?', '2024-10-02', 39, 0),
    ('Split-complementary or triadic for contrast?', '2024-09-04', 40, 0),
    ('Warm vs cool lighting makes such a difference.', '2024-09-06', 40, 0),
    ('Your use of monochrome last piece was 🔥', '2024-12-22', 39, 0),
    ('Love how our voices blend on that chorus.', '2025-04-02', 2, 0),
    ('I just finished a watercolour of downtown—want to see?', '2025-01-28', 3, 0),
    ('Anyone got a sample pack to recommend?', '2024-10-29', 10, 0),
    ('What if we did a mural together?', '2025-02-02', 13, 0),
    ('Let''s mix that down tomorrow.', '2024-08-25', 15, 0),
    ('This week’s challenge: abstract emotion!', '2024-09-25', 22, 0),
    ('Let’s do a live stream critique session?', '2025-03-29', 28, 0),
    ('I rhymed ‘echo’ with ‘let go’—too cheesy?', '2025-03-10', 32, 0),
    ('I booked us a slot for Saturday.', '2024-08-19', 36, 0),
    ('Split-complementary or triadic for contrast?', '2024-11-17', 40, 0),
    ('Should we try layering vocals next?', '2025-03-19', 2, 0),
    ('This playlist goes so well with painting!', '2024-11-27', 4, 0),
    ('Just uploaded a new beat to our shared folder.', '2025-02-08', 5, 0),
    ('Merging your style with mine was so fun!', '2024-11-04', 12, 0),
    ('Can someone record a quick bass loop?', '2024-11-19', 17, 0),
    ('I posted my submission—feedback welcome!', '2024-11-25', 22, 0),
    ('Let’s do a live stream critique session?', '2024-10-18', 30, 0),
    ('Chorus is locked in—now on to verse two.', '2025-01-13', 32, 0),
    ('I booked us a slot for Saturday.', '2024-11-20', 38, 0),
    ('Your use of monochrome last piece was 🔥', '2025-03-21', 40, 0),
    ('Should we try layering vocals next?', '2024-11-09', 2, 0),
    ('I just finished a watercolour of downtown—want to see?', '2025-04-06', 3, 0),
    ('Anyone got a sample pack to recommend?', '2024-10-19', 6, 0),
    ('Merging your style with mine was so fun!', '2024-12-04', 13, 0),
    ('Trying out a new synth plugin tonight.', '2024-08-12', 14, 0),
    ('This week’s challenge: abstract emotion!', '2025-02-04', 21, 0),
    ('Calling all visual artists—collab prompt incoming!', '2024-12-28', 26, 0),
    ('Chorus is locked in—now on to verse two.', '2025-02-06', 31, 0),
    ('I booked us a slot for Saturday.', '2024-11-08', 38, 0),
    ('Warm vs cool lighting makes such a difference.', '2024-09-14', 39, 0),
    ('That harmony came out better than I expected!', '2024-12-01', 1, 0),
    ('Next session: gouache or charcoal?', '2025-01-18', 4, 0),
    ('That bassline from yesterday is stuck in my head!', '2024-10-02', 9, 0),
    ('What if we did a mural together?', '2024-09-08', 13, 0),
    ('Trying out a new synth plugin tonight.', '2024-08-05', 17, 0),
    ('Colour palette suggestions for sadness?', '2024-10-17', 25, 0),
    ('Let’s do a live stream critique session?', '2025-02-27', 26, 0),
    ('I rhymed ‘echo’ with ‘let go’—too cheesy?', '2024-08-25', 32, 0),
    ('Can we test the mic before everyone arrives?', '2024-08-03', 35, 0),
    ('Your use of monochrome last piece was 🔥', '2024-08-15', 39, 0),
    ('That harmony came out better than I expected!', '2024-10-05', 1, 0),
    ('Next session: gouache or charcoal?', '2024-11-25', 3, 0),
    ('Anyone got a sample pack to recommend?', '2024-10-04', 6, 0),
    ('I can send you the layered PSD file.', '2024-12-14', 11, 0),
    ('Trying out a new synth plugin tonight.', '2024-11-26', 16, 0),
    ('This week’s challenge: abstract emotion!', '2025-03-27', 21, 0),
    ('Let’s do a live stream critique session?', '2024-11-16', 27, 0),
    ('Chorus is locked in—now on to verse two.', '2025-03-21', 32, 0),
    ('Can we test the mic before everyone arrives?', '2024-09-22', 33, 0),
    ('Split-complementary or triadic for contrast?', '2024-11-18', 39, 0),
    ('Should we try layering vocals next?', '2025-03-17', 2, 0),
    ('I just finished a watercolour of downtown—want to see?', '2025-01-31', 3, 0),
    ('That bassline from yesterday is stuck in my head!', '2024-08-06', 5, 0),
    ('Merging your style with mine was so fun!', '2024-09-27', 13, 0),
    ('Let''s mix that down tomorrow.', '2024-12-31', 15, 0),
    ('This week’s challenge: abstract emotion!', '2024-11-05', 23, 0),
    ('Who''s in for a zine project?', '2025-03-29', 28, 0),
    ('Chorus is locked in—now on to verse two.', '2025-01-17', 31, 0),
    ('Bring that acoustic—you know the one!', '2025-02-14', 35, 0),
    ('Split-complementary or triadic for contrast?', '2024-09-22', 39, 0),
    ('That harmony came out better than I expected!', '2024-10-17', 2, 0),
    ('Next session: gouache or charcoal?', '2024-08-18', 4, 0),
    ('Anyone got a sample pack to recommend?', '2025-03-14', 5, 0),
    ('I can send you the layered PSD file.', '2024-09-05', 11, 0),
    ('Let''s mix that down tomorrow.', '2024-09-09', 19, 0),
    ('This week’s challenge: abstract emotion!', '2024-12-14', 21, 0),
    ('Let’s do a live stream critique session?', '2025-03-14', 27, 0),
    ('I rhymed ‘echo’ with ‘let go’—too cheesy?', '2024-11-26', 32, 0),
    ('Can we test the mic before everyone arrives?', '2025-03-05', 34, 0),
    ('Your use of monochrome last piece was 🔥', '2025-04-07', 40, 0),
    ('Love how our voices blend on that chorus.', '2025-03-18', 1, 0),
    ('This playlist goes so well with painting!', '2025-03-26', 3, 0),
    ('Anyone got a sample pack to recommend?', '2025-02-07', 8, 0),
    ('What if we did a mural together?', '2025-04-02', 12, 0),
    ('Can someone record a quick bass loop?', '2025-01-29', 14, 0),
    ('Colour palette suggestions for sadness?', '2025-02-13', 22, 0),
    ('Let’s do a live stream critique session?', '2025-04-07', 29, 0),
    ('I rhymed ‘echo’ with ‘let go’—too cheesy?', '2024-10-24', 31, 0),
    ('I booked us a slot for Saturday.', '2025-01-08', 38, 0),
    ('Warm vs cool lighting makes such a difference.', '2025-02-15', 39, 0),
    ('Should we try layering vocals next?', '2024-12-01', 2, 0),
    ('Next session: gouache or charcoal?', '2025-01-18', 4, 0),
    ('Just uploaded a new beat to our shared folder.', '2024-11-08', 10, 0),
    ('I can send you the layered PSD file.', '2025-01-07', 12, 0),
    ('Can someone record a quick bass loop?', '2025-04-14', 15, 0),
    ('This week’s challenge: abstract emotion!', '2025-04-18', 22, 0),
    ('Who''s in for a zine project?', '2025-03-09', 27, 0),
    ('Struggling with this bridge, can I get thoughts?', '2025-01-07', 31, 0),
    ('Can we test the mic before everyone arrives?', '2024-08-18', 35, 0),
    ('Your use of monochrome last piece was 🔥', '2025-04-04', 39, 0),
    ('Should we try layering vocals next?', '2024-09-28', 2, 0),
    ('This playlist goes so well with painting!', '2024-11-20', 3, 0),
    ('That bassline from yesterday is stuck in my head!', '2024-12-04', 5, 0),
    ('Merging your style with mine was so fun!', '2024-10-02', 12, 0),
    ('Can someone record a quick bass loop?', '2025-02-06', 16, 0),
    ('This week’s challenge: abstract emotion!', '2024-10-29', 22, 0),
    ('Calling all visual artists—collab prompt incoming!', '2025-01-04', 30, 0),
    ('I rhymed ‘echo’ with ‘let go’—too cheesy?', '2025-01-13', 32, 0),
    ('Can we test the mic before everyone arrives?', '2025-01-23', 33, 0),
    ('Split-complementary or triadic for contrast?', '2024-12-11', 40, 0),
    ('Should we try layering vocals next?', '2024-09-23', 2, 0),
    ('This playlist goes so well with painting!', '2025-03-11', 3, 0),
    ('Anyone got a sample pack to recommend?', '2024-12-25', 9, 0),
    ('What if we did a mural together?', '2024-12-03', 12, 0),
    ('Trying out a new synth plugin tonight.', '2024-11-17', 16, 0),
    ('I posted my submission—feedback welcome!', '2025-03-14', 22, 0),
    ('Let’s do a live stream critique session?', '2024-08-01', 28, 0),
    ('Chorus is locked in—now on to verse two.', '2024-12-02', 31, 0),
    ('Bring that acoustic—you know the one!', '2024-12-04', 36, 0),
    ('Your use of monochrome last piece was 🔥', '2024-10-30', 40, 0),
    ('That harmony came out better than I expected!', '2024-12-15', 1, 0),
    ('This playlist goes so well with painting!', '2025-04-08', 3, 0),
    ('Anyone got a sample pack to recommend?', '2024-08-03', 7, 0),
    ('What if we did a mural together?', '2025-04-08', 13, 0),
    ('Trying out a new synth plugin tonight.', '2025-04-08', 19, 0),
    ('I posted my submission—feedback welcome!', '2024-12-16', 23, 0),
    ('Let’s do a live stream critique session?', '2025-02-12', 28, 0),
    ('Struggling with this bridge, can I get thoughts?', '2024-11-24', 31, 0),
    ('I booked us a slot for Saturday.', '2024-10-23', 35, 0),
    ('Your use of monochrome last piece was 🔥', '2025-01-06', 40, 0),
    ('Love how our voices blend on that chorus.', '2024-12-16', 2, 0),
    ('I just finished a watercolour of downtown—want to see?', '2025-01-03', 3, 0),
    ('Anyone got a sample pack to recommend?', '2024-12-28', 5, 0),
    ('Merging your style with mine was so fun!', '2024-09-14', 12, 0),
    ('Let''s mix that down tomorrow.', '2025-04-15', 18, 0),
    ('I posted my submission—feedback welcome!', '2025-02-15', 21, 0),
    ('Calling all visual artists—collab prompt incoming!', '2024-10-05', 27, 0),
    ('Chorus is locked in—now on to verse two.', '2025-01-16', 32, 0),
    ('Bring that acoustic—you know the one!', '2025-01-12', 35, 0),
    ('Warm vs cool lighting makes such a difference.', '2025-02-02', 40, 0),
    ('Should we try layering vocals next?', '2024-08-01', 2, 0),
    ('This playlist goes so well with painting!', '2024-09-24', 3, 0),
    ('Just uploaded a new beat to our shared folder.', '2025-01-01', 8, 0),
    ('I can send you the layered PSD file.', '2025-03-11', 12, 0),
    ('Let''s mix that down tomorrow.', '2024-08-28', 14, 0),
    ('Colour palette suggestions for sadness?', '2024-12-06', 22, 0),
    ('Who''s in for a zine project?', '2024-08-05', 26, 0),
    ('Chorus is locked in—now on to verse two.', '2025-03-03', 32, 0),
    ('Bring that acoustic—you know the one!', '2024-12-26', 37, 0),
    ('Split-complementary or triadic for contrast?', '2024-10-30', 39, 0),
    ('That harmony came out better than I expected!', '2025-04-01', 1, 0),
    ('I just finished a watercolour of downtown—want to see?', '2025-03-02', 4, 0),
    ('Anyone got a sample pack to recommend?', '2024-11-19', 6, 0),
    ('I can send you the layered PSD file.', '2024-09-09', 11, 0),
    ('Let''s mix that down tomorrow.', '2025-03-10', 19, 0),
    ('Colour palette suggestions for sadness?', '2025-03-13', 20, 0),
    ('Let’s do a live stream critique session?', '2024-10-02', 27, 0),
    ('Struggling with this bridge, can I get thoughts?', '2025-03-25', 31, 0),
    ('I booked us a slot for Saturday.', '2024-08-20', 37, 0),
    ('Split-complementary or triadic for contrast?', '2025-01-17', 40, 0),
    ('That harmony came out better than I expected!', '2024-12-03', 1, 0),
    ('I just finished a watercolour of downtown—want to see?', '2024-11-18', 4, 0),
    ('That bassline from yesterday is stuck in my head!', '2025-03-22', 7, 0),
    ('I can send you the layered PSD file.', '2025-02-26', 12, 0),
    ('Let''s mix that down tomorrow.', '2024-11-01', 18, 0),
    ('This week’s challenge: abstract emotion!', '2025-02-15', 23, 0),
    ('Who''s in for a zine project?', '2025-02-20', 27, 0),
    ('Struggling with this bridge, can I get thoughts?', '2024-12-11', 31, 0),
    ('I booked us a slot for Saturday.', '2025-03-25', 34, 0),
    ('Split-complementary or triadic for contrast?', '2025-02-03', 40, 0),
    ('Love how our voices blend on that chorus.', '2024-08-10', 1, 0),
    ('This playlist goes so well with painting!', '2024-12-17', 4, 0),
    ('Just uploaded a new beat to our shared folder.', '2025-01-09', 6, 0),
    ('I can send you the layered PSD file.', '2025-02-01', 13, 0),
    ('Trying out a new synth plugin tonight.', '2025-02-12', 17, 0),
    ('This week’s challenge: abstract emotion!', '2024-11-23', 20, 0),
    ('Let’s do a live stream critique session?', '2024-10-25', 30, 0),
    ('Chorus is locked in—now on to verse two.', '2024-09-14', 31, 0),
    ('Bring that acoustic—you know the one!', '2024-09-12', 38, 0),
    ('Warm vs cool lighting makes such a difference.', '2024-09-13', 39, 0);
SELECT * FROM dbo.tMessages;

