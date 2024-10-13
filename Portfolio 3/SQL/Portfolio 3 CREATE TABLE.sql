/* CREATE TABLE Escape_Rooms (
	RoomID INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(40),
    Theme VARCHAR(40),
    DifficultyLevel INT,
    Duration INT,
	PRIMARY KEY (RoomID)
);

CREATE TABLE Puzzles (
	PuzzleID INT NOT NULL AUTO_INCREMENT,
    RoomID INT,
    PuzzleName VARCHAR(40),
    `Description` VARCHAR(255),
    PuzzleType VARCHAR(40),
    DifficultyRating INT,
    PRIMARY KEY (PuzzleID),
    FOREIGN KEY (RoomID) REFERENCES Escape_Rooms(RoomID) ON UPDATE CASCADE
);
/*
CREATE TABLE Teams (
	TeamID INT NOT NULL AUTO_INCREMENT,
    TeamName VARCHAR(40),
    StartTime TIME,
    EndTime TIME,
    CompletionStatus VARCHAR(40),
    PRIMARY KEY (TeamID)
);

CREATE TABLE Players (
	PlayerID INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(40),
    Nickname VARCHAR(40),
    Email VARCHAR(40),
    PRIMARY KEY (PlayerID)
); */
/*
CREATE TABLE Team_Progress (
	ProgressID INT NOT NULL AUTO_INCREMENT,
    TeamID INT,
    PuzzleID INT,
    StartTime TIME,
    EndTime TIME,
    SolvedStatus VARCHAR(40),
    PRIMARY KEY (ProgressID),
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID) ON UPDATE CASCADE,
    FOREIGN KEY (PuzzleID) REFERENCES Puzzles(PuzzleID) ON UPDATE CASCADE
);

CREATE TABLE Hints (
	HintID INT NOT NULL AUTO_INCREMENT,
    PuzzleID INT,
    HintText VARCHAR(40),
    UsageCount INT,
    PRIMARY KEY (HintID),
    FOREIGN KEY (PuzzleID) REFERENCES Puzzles(PuzzleID) ON UPDATE CASCADE
);

CREATE TABLE Player_Actions (
	ActionID INT NOT NULL AUTO_INCREMENT,
    PlayerID INT,
    PuzzleID INT,
    ActionType VARCHAR(40),
    ActionTimestamp TIME,
    PRIMARY KEY (ActionID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID) ON UPDATE CASCADE,
    FOREIGN KEY (PuzzleID) REFERENCES Puzzles(PuzzleID) ON UPDATE CASCADE
); */

/* INSERT INTO escape_rooms (Title, Theme, DifficultyLevel, Duration)
VALUES 
('the Rogue Captain', 'Bomb Defusal', 6, 45),
('the Slaughterhouse', 'Horror', 8, 30); */

/* INSERT INTO players (`Name`, Nickname, Email)
VALUES
('Michael', 'Mick20', 'MickLang@hotmail.com'),
('Emily', 'Spinner', 'EmilySpin@hotmail.com'),
('Chris', 'Mort', 'ChrisN@hotmail.com'),
('Nanna', 'Nanny', 'Nannamarie@hotmail.com'),
('Oluf', 'Viking', 'OlufOlufsen@hotmail.com') */

/* INSERT INTO Puzzles (RoomID, PuzzleName, `Description`, PuzzleType, DifficultyRating)
VALUES 
(1, 'Lens the Map', 'Find the code to the door, by using different lenses on a map to spot letters', 'Search', 4),
(1, 'Defuse the Bomb', 'Cut the wires in the right order, by following the color coding of the walls', 'Logic', 5),
(2, 'Escape the Fridge', 'Count the hanging meat in each row to get the code for the door', 'Observant', 6),
(2, 'Stop the Saw', 'Arrange the knives in the correct order, by matching them with a chess board', 'Logic', 8),
(2, 'Escape the Forest', 'Disable the Owl Camera by deciphering a message from a tape-recorder and letters on the trees', 'Listen', 7) */

/* ALTER TABLE Teams
DROP COLUMN StartTime,
DROP COLUMN EndTime,
DROP COLUMN CompletionStatus; */
/* DROP TABLE if exists Escape_Attempts;
CREATE TABLE Escape_Attempts (
	AttemptID INT NOT NULL AUTO_INCREMENT,
    RoomID INT,
    TeamID INT, 
    StartTime TIME,
    EndTime TIME,
    CompletionStatus VARCHAR(40),
    PRIMARY KEY (AttemptID),
    FOREIGN KEY (RoomID) REFERENCES Escape_Rooms(RoomID),
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
    ); */

/* INSERT INTO Teams (TeamName)
VALUES 
('Dynamic Duo'),
('The Specialists') */

/* INSERT INTO Team_Progress (TeamID, PuzzleID, StartTIme, EndTime, SolvedStatus)
VALUES 
(1, 1, '15:11:46.41', '15:21:33.12', 'Solved'),
(1, 2, '15:22:16.23', '15:30:34.38', 'Solved'),
(1, 3, '12:55:29.55', '13:07:34.11', 'Solved'),
(1, 4, '13:09:41.27', '13:21:56.35', 'Solved'),
(1, 5, '13:22:02.01', '13:25:30.15', 'Failed'),
(2, 1, '10:03:23.16', '10:11:17.04', 'Solved'),
(2, 2, '10:12:45.39', '10:19:14.31', 'Solved'),
(2, 3, '10:27:14.06', '10:37:31.58', 'Solved'),
(2, 4, '10:39:59.31', '10:50:03.53', 'Solved'),
(2, 5, '10:51:46.07', '11:04:26.51', 'Solved') */

/* INSERT INTO Hints (PuzzleID, HintText, UsageCount)
Values 
(1, 'Try a new perspective', 1),
(2, 'Look around', 1),
(3, 'Dont hang around too long', 3),
(4, 'Chess can be too much to handle', 7),
(5, 'What does the Owl say?', 5) */

/* INSERT INTO Player_Actions (PlayerID, PuzzleID, ActionType, ActionTimestamp)
VALUES
(1, 1, 'Attempt', '15:17:33.12'),
(2, 4, 'HintRequest', '13:20:02.47'),
(3, 2, 'Attempt', '10:17:57.31'),
(5, 3, 'Attempt', '10:35:01.56'),
(3, 4, 'HintRequest', '10:48:48.36'),
(2, 5, 'Attempt', '11:02:18.42') */

/* INSERT INTO Escape_Attempts (RoomID, TeamID, StartTime, EndTime, CompletionStatus)
VALUES 
(1, 1, '15:10:11.45', '15:30:34.38', 'Completed'),
(1, 2, '10:01:57.31', '10:19:14.31', 'Completed'),
(2, 1, '12:53:43.51', '13:25:30.15', 'Timed Out'),
(2, 2, '10:26:02.56', '11:04:26.51', 'Completed') */













