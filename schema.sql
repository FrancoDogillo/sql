-- Creating Users table
CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE
);

-- Creating Groups table
CREATE TABLE Groups (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name VARCHAR(50)
);

-- Creating Posts table
CREATE TABLE Posts (
    post_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    content TEXT,
    visibility TEXT CHECK(visibility IN ('public', 'private', 'group')),
    group_id INTEGER NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (group_id) REFERENCES Groups(group_id)
);

-- Creating Group_Memberships table
CREATE TABLE Group_Memberships (
    membership_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    group_id INTEGER,
    status TEXT CHECK(status IN ('accepted', 'pending')),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (group_id) REFERENCES Groups(group_id)
);

-- Creating Friendships table
CREATE TABLE Friendships (
    friendship_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id1 INTEGER,
    user_id2 INTEGER,
    status TEXT CHECK(status IN ('accepted', 'pending')),
    FOREIGN KEY (user_id1) REFERENCES Users(user_id),
    FOREIGN KEY (user_id2) REFERENCES Users(user_id)
);

-- Creating Friend_Requests table
CREATE TABLE Friend_Requests (
    request_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sender_id INTEGER,
    receiver_id INTEGER,
    status TEXT CHECK(status IN ('accepted', 'pending')),
    FOREIGN KEY (sender_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES Users(user_id)
);
