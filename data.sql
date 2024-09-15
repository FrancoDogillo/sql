INSERT INTO Users (first_name, last_name, email, phone_number, date_of_birth) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '123-456-7890', '2002-05-10'),
('Bob', 'Williams', 'bob.williams@example.com', '987-654-3210', '2004-03-15'),
('Charlie', 'Brown', 'charlie.brown@example.com', '555-123-4567', '1998-09-14');

INSERT INTO Groups (group_name) VALUES
('Music Lovers'),
('Tech Enthusiasts');

INSERT INTO Posts (user_id, content, visibility, group_id) VALUES
(1, 'Hello everyone, good to be here!', 'group', 1),
(2, 'Excited to be part of this group!', 'group', 2);

INSERT INTO Group_Memberships (user_id, group_id, status) VALUES
(2, 2, 'pending'),
(1, 1, 'accepted');

INSERT INTO Friendships (user_id1, user_id2, status) VALUES
(1, 2, 'accepted'),
(2, 3, 'pending');

INSERT INTO Friend_Requests (sender_id, receiver_id, status) VALUES
(1, 2, 'pending'),
(1, 3, 'accepted');
