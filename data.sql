INSERT INTO Users (Username, FirstName, LastName, DateOfBirth, Password)
VALUES
('judem043', 'Jude', 'Santos', '2002-08-12', 'Password123'),
('Roar67', 'Dragon', 'Lizard', '1999-11-01', 'Password456'),
('Dino21', 'Dinosaur', 'Chicken', '1999-12-25', 'Password789'),
('Hotdog69', 'Cat', 'Dog', '2002-07-07', '123Password'),
('Cars4', 'Lighning', 'mcqueen', '2006-06-09', '456Password'),
('Inside Out2', 'Anger', 'Joy', '2015-06-15', '789Password'),
('Kaiju No.8', 'Kafka', 'Hibino', '1992-08-05', '12Password3'),
('WANTED10m', 'Apollo', 'Quiboloy', '1975-04-25', '4Password56');

INSERT INTO Friends (FriendWhoAdded, FriendBeingAdded, IsAccepted) 
VALUES 
(1, 2, TRUE),
(1, 3, TRUE),
(2, 4, FALSE),
(2, 5, TRUE),
(3, 1, TRUE),
(3, 6, FALSE),
(4, 1, TRUE),
(5, 2, TRUE),
(6, 1, TRUE),
(7, 2, FALSE);

INSERT INTO Groups (GroupName, CreatedBy)
VALUES
('Study Hard and Grind', 1),
('Dragon Cave park', 2),
('Dinosaurs Park', 3),
('Let me cook party', 4),
('Highway Group', 5),
('Yoga Group', 6),
('Lost and Found', 7);


INSERT INTO Posts (PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID)
VALUES
('Hard work!', 2, TRUE, FALSE, 2),
('Explore my House', 1, TRUE, TRUE, 1),
('Adventures with me', 3, FALSE, TRUE, 3), 
('Can you cook better than me?', 2, TRUE, FALSE, 2),
('Race with me', 5, FALSE, TRUE, 6),
('More energy!', 7, TRUE, FALSE, 7),
('We are venom', 3, FALSE, TRUE, 5),
('if you lost something, go to our office.', 6, TRUE, FALSE, 1);

INSERT INTO GroupMembershipRequests (GroupID, GroupMemberUserID, IsGroupMemberShipAccepted) 
VALUES 
(1, 2, TRUE),
(2, 3, FALSE),
(3, 4, TRUE),
(4, 5, FALSE),
(5, 6, TRUE),
(6, 7, FALSE),
(7, 1, TRUE),
(1, 4, TRUE),
(2, 5, FALSE),
(3, 6, TRUE);


#1
SELECT * FROM Users 
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

#2
SELECT * FROM Posts 
WHERE PostedBy = 4;

#3
SELECT GroupName FROM Groups;

#4
SELECT * FROM GroupMembershipRequests 
WHERE GroupMemberUserID = 2;

#5
SELECT * FROM Friends 
WHERE FriendWhoAdded = 2 OR FriendBeingAdded = 2;

#6
SELECT * FROM Friends 
WHERE FriendWhoAdded = 1;

#7
SELECT * FROM Posts 
WHERE GroupID = 2 AND IsOnlyForFriends = TRUE;

#8
SELECT * FROM GroupMembershipRequests 
WHERE GroupID = 2 AND IsGroupMemberShipAccepted = FALSE;
