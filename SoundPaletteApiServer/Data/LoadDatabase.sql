/* delete statement 
DELETE dbo.tUsers WHERE username='user1';
DELETE dbo.tUserInfo WHERE userId=1;
*/

/* clear entire table
DELETE FROM dbo.tUsers;
DBCC CHECKIDENT ('dbo.tUsers', RESEED, 0);
*/

USE [SP];
GO

SELECT * FROM dbo.tPostTypes;
SELECT * FROM dbo.tLocations;


/* ----- USERS ----- */
SELECT * FROM dbo.tUsers;
INSERT INTO dbo.tUsers (Username, Password) VALUES
    ('user1', 'pass1!'),
    ('user2', 'pass2!'),
    ('user3', 'pass3!'),
    ('user4', 'pass4!');
SELECT * FROM dbo.tUsers;


/* ----- USER INFO ----- */
SELECT * FROM dbo.tUserInfos;
INSERT INTO dbo.tUserInfos (userId, locationId, email, phone, dOB, dateCreated) VALUES
   (1, 1, 'user1@example.com', '123-456-7890', '1995-05-10', GETUTCDATE()),
   (2, 1, 'user2@example.com', '234-567-8901', '1992-08-22', GETUTCDATE()),
   (3, 1, 'user3@example.com', '345-678-9012', '2000-02-15', GETUTCDATE()),
   (4, 1, 'user4@example.com', '456-789-0123', '1988-11-30', GETUTCDATE());
SELECT * FROM dbo.tUserInfos;


/* ----- USER PROFILE ----- */
-- DELETE FROM dbo.tUserProfile;
-- DBCC CHECKIDENT ('dbo.tUserProfile', RESEED, 0);
SELECT * FROM dbo.tUserProfiles;
INSERT INTO dbo.tUserProfiles (userId, bio, picture) VALUES
    (1, 'Painter | Digital Artist | Creator. Capturing moments through color & texture. Commissions open','/my/profilePic.jpg'),
    (2, 'Words are my canvas. Sharing stories, thoughts, and raw emotions','/my/profilePic.jpg'),
    (3, 'Beatmaker | Producer | Mixer. Turning ideas into tracks. Always down for collabs – hit me up!','/my/profilePic.jpg'),
    (4, 'Sharing my soul through sound. New single out now!','/my/profilePic.jpg');
SELECT * FROM dbo.tUserProfiles;


/* ----- TAGS ----- */
SELECT * FROM dbo.tTags;

/* ----- USER TAGS ----- */
SELECT * FROM dbo.tUserTags;
INSERT INTO dbo.tUserTags (userId, tagId) VALUES
  (1, 1),
  (1, 2),
  (1, 6),
  (1, 7),
  (2, 3),
  (2, 2),
  (3, 2),
  (3, 4),
  (3, 5),
  (4, 6),
  (4, 7);
SELECT * FROM dbo.tUserTags;


/* ----- POSTS ----- */
-- DELETE FROM dbo.tPostLikes;
-- DBCC CHECKIDENT ('dbo.tPostLikes', RESEED, 0);
-- DELETE FROM dbo.tPosts;
-- DBCC CHECKIDENT ('dbo.tPosts', RESEED, 0);
SELECT * FROM dbo.tPosts;
INSERT INTO dbo.tPosts (userId, postTypeId, caption, isPremium, isMature, isDeleted, createdDate, publishDate, CommentCount, LikeCount) VALUES
    (1, 1, 'Exploring new sounds!', 0, 0, 0, CAST(GETUTCDATE() AS DATE), CAST(GETUTCDATE() AS DATE), 3, 2),
    (2, 3, 'new lyrics in the works! just need some good vocals...', 1, 0, 0, GETUTCDATE(), GETUTCDATE(), 9, 123),
    (4, 1, 'Finished my latest track!', 0, 0, 0, GETUTCDATE(), GETUTCDATE(), 1, 33),
    (3, 3, 'What my Friday nights are looking like..', 0, 0, 0, GETUTCDATE(), GETUTCDATE(), 10,3),
    (1, 1, 'Trying out a new genre today!', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),3,409),
    (2, 3, 'they call this position the birds eye view I believe', 1, 0, 0, GETUTCDATE(), GETUTCDATE(),4,32),
    (2, 1, 'Inspired by nature 🌿', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),12,39),
    (4, 3, 'Sunday Funday!', 0, 1, 0, GETUTCDATE(), GETUTCDATE(),2,3049),
    (4, 1, 'Here’s a snippet from my next album.', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),4,54),
    (3, 3, 'just my morning commute guys…', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),9,43),
    (2, 1, 'Collab opportunity for vocalists!', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),4,35),
    (1,3, 'inspiration.', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),2,49),
    (2, 1, 'A little jazz influence in this one.', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),9,384),
    (3, 3, 'writing. dreaming. thinking.', 1, 0, 0, GETUTCDATE(), GETUTCDATE(),8,941),
    (4, 1, 'Live session from last night!', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),10,8),
    (2, 3, 'yes mom, this is work.', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),5,938),
    (3, 1, 'Chill beats for focus.', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),9,43),
    (1, 3, 'Art class schedule will be release on Sunday! Thank you for your patiences', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),2,489),
    (2, 1, 'Throwback to an old favorite of mine.', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),4,98),
    (4, 3, 'I cant wait to share this melody with you guys! Just needs some lyrics… HMU!', 0, 0, 0, GETUTCDATE(), GETUTCDATE(),3,49);
SELECT * FROM dbo.tPosts;


/* ----- POST CONTENTS ----- */
-- DELETE FROM dbo.tPostContents;
-- DBCC CHECKIDENT ('dbo.tPostContents', RESEED, 0);
SELECT * FROM dbo.tPostContents;
INSERT INTO dbo.tPostContents (postId, postTextContent, s3Token) VALUES
     (1, 'Sharing some thoughts on my latest sound exploration.', NULL),
     (2, 'image02.png',NULL),
     (3, 'Excited to finally share this track with everyone!', NULL),
     (4, 'image07.png', NULL),
     (5, 'Trying out something new and unexpected today!', NULL),
     (6, 'image09.png', NULL),
     (7, 'Nature always inspires my melodies.', NULL),
     (8, 'image14.png', NULL),
     (9, 'A sneak peek at my upcoming album. Hope you like it!', NULL),
     (10, 'image18.png', NULL),
     (11, 'Looking for a vocalist to collaborate with on my next track.', NULL),
     (12, 'image21.png', NULL),
     (13, 'Blending jazz influences into my latest piece.', NULL),
     (14, 'image22.png', NULL),
     (15, 'Captured a raw, live session last night. Pure energy!', NULL),
     (16, 'image25.png', NULL),
     (17, 'Lo-fi beats to help you focus and relax.', NULL),
     (18, 'image29.png', NULL),
     (19, 'Throwing it back to one of my earliest creations.', NULL),
     (20, 'image10.png', NULL);
SELECT * FROM dbo.tPostContents;


/* ----- COMMENTS ----- */
-- DELETE FROM dbo.tPostComments;
-- DBCC CHECKIDENT ('dbo.tPostComments', RESEED, 0);
SELECT * FROM dbo.tPostComments;
INSERT INTO dbo.tPostComments (postId, userId, commentContent, createdDate) VALUES
    (1, 2, 'Love the vibe on this one!', GETUTCDATE()),
    (1, 3, 'Really unique sound. Keep it up!', GETUTCDATE()),
    (1, 4, 'Chill beats. Definitely adding this to my playlist.', GETUTCDATE()),
    (2, 1, 'This photo captures a cool mood.', GETUTCDATE()),
    (2, 3, 'Incredible shot! Where did you take this?', GETUTCDATE()),
    (2, 4, 'This would sound amazing with the right voice.', GETUTCDATE()),
    (2, 3, 'I’m a vocalist! Let’s collab.', GETUTCDATE()),
    (2, 1, 'Track is fire!', GETUTCDATE()),
    (2, 4, 'I need this on repeat.', GETUTCDATE()),
    (2, 3, 'You have such a distinct style!', GETUTCDATE()),
    (2, 2, 'Seriously loving your work.', GETUTCDATE()),
    (2, 4, 'What inspired this one?', GETUTCDATE()),
    (3, 4, 'Can’t wait to hear the full track!', GETUTCDATE()),
    (4, 2, 'Friday nights done right.', GETUTCDATE()),
    (4, 3, 'Love the atmosphere in this photo.', GETUTCDATE()),
    (4, 1, 'This looks like a great night!', GETUTCDATE()),
    (4, 4, 'I can feel the mood through the picture.', GETUTCDATE()),
    (4, 3, 'Keep sharing moments like this.', GETUTCDATE()),
    (4, 2, 'Wow, your nights look fun.', GETUTCDATE()),
    (4, 1, 'So vibey.', GETUTCDATE()),
    (4, 4, 'This should be an album cover.', GETUTCDATE()),
    (4, 3, 'Loving your content!', GETUTCDATE()),
    (4, 2, 'I need nights like this.', GETUTCDATE()),
    (5, 4, 'New genre? I’m intrigued.', GETUTCDATE()),
    (5, 1, 'Let me know how it turns out!', GETUTCDATE()),
    (5, 3, 'Trying new things is always great.', GETUTCDATE()),
    (6, 3, 'The angle on this shot is perfect.', GETUTCDATE()),
    (6, 4, 'Bird’s eye view indeed. Wow!', GETUTCDATE()),
    (6, 1, 'What camera are you using?', GETUTCDATE()),
    (6, 2, 'I love the perspective.', GETUTCDATE()),
    (7, 1, 'Nature always inspires my melodies.', GETUTCDATE()),
    (7, 3, 'I can already feel the vibe from this.', GETUTCDATE()),
    (7, 2, 'Beautiful scenery.', GETUTCDATE()),
    (7, 4, 'Where was this taken?', GETUTCDATE()),
    (7, 1, 'This could be a great album cover.', GETUTCDATE()),
    (7, 2, 'This vibe is unmatched.', GETUTCDATE()),
    (7, 3, 'Keep it coming!', GETUTCDATE()),
    (7, 4, 'I can already feel the vibe.', GETUTCDATE()),
    (7, 4, 'Morning commute looks chill.', GETUTCDATE()),
    (7, 1, 'Where do you work?', GETUTCDATE()),
    (7, 3, 'Love the simplicity of the photo.', GETUTCDATE()),
    (7, 2, 'I miss commutes like this.', GETUTCDATE()),
    (8, 2, 'Sunday Funday looks lit!', GETUTCDATE()),
    (8, 4, 'This shot is amazing.', GETUTCDATE()),
    (9, 3, 'Excited for the album. Can’t wait!', GETUTCDATE()),
    (9, 1, 'When is it dropping?', GETUTCDATE()),
    (9, 2, 'Loving the sound so far.', GETUTCDATE()),
    (9, 4, 'This is going to be great.', GETUTCDATE()),
    (10, 4, 'Morning commute looks chill.', GETUTCDATE()),
    (10, 1, 'Where do you work?', GETUTCDATE()),
    (10, 3, 'Love the simplicity of the photo.', GETUTCDATE()),
    (10, 2, 'I miss commutes like this.', GETUTCDATE()),
    (10, 1, 'Looks peaceful.', GETUTCDATE()),
    (10, 3, 'Nice capture!', GETUTCDATE()),
    (10, 4, 'Post more like this.', GETUTCDATE()),
    (10, 2, 'This is amazing.', GETUTCDATE()),
    (10, 3, 'Vibe unmatched.', GETUTCDATE());

SELECT * FROM dbo.tPostComments;
