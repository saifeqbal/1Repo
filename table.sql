create database tablen;
create table tablen
{

insert column ["gamers table", 
varchar(" 256") ,where values ("gamers table"),(" game starts") ("scores")  ("players")];

insert column[ "title" , varchar ("32") values [(" OS, Android" )];

 insert column ("games") VARCHAR 64 WHERE values [ ("Street fighter"),("tekken"),(" Ronin"),("call of dragons"),("OS, Android")]; 
insert column ["Release" varchar("54"),values( ("12/54")("12,24")];
INSERT INTO COLUMN [("Release")];

{
values("12/2021","12/2022","12/2023");
}
insert row("GAME 1", (32) values ("Street fighter")];
INSERT ROW ["GAME 2" VARCHAR 16 VALUES("call of dragons")];
INSERT row[ "game 3",VARCHAR 16, values("Galaxiaga")];
insert row ["game 4",VARCHAR 16 , VALUES("MECH ARENA");
INSERT ROW ["game 5",VARCHAR 16 , VALUES("BULLET ECHO INDIA"),("")];
INSERT ROW [ "GAME 6" ,VARCHAR 16 VALUES [("BATTLEGROUNDS INDIA") ,("23/10")];
insert into column  [("games"),values [("vintage games")];
}
insert into column[("stats"),values ("gamers Logged on : 1")];



-- Create a SQL file named 'image_storage.sql'
-- Create the table for storing pictures
CREATE TABLE Pictures (
    PictureID INT AUTO_INCREMENT PRIMARY KEY,
    FileName VARCHAR(255) NOT NULL,
    FileType VARCHAR(50) NOT NULL,
    FileSize INT NOT NULL,
    ImageData BLOB NOT NULL,
    UploadDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Example of how to insert an image into the table
-- Note: Here, '?' is used as a placeholder for prepared statements in many SQL dialects
-- You would replace '?' with your actual data or use parameters in your application
INSERT INTO Pictures (FileName, FileType, FileSize, ImageData) 
VALUES (?, ?, ?, ?);
-- Example to retrieve an image
SELECT ImageData FROM Pictures WHERE PictureID = ?;
-- Example to update an image
UPDATE Pictures 
SET FileName = ?, FileType = ?, FileSize = ?, ImageData = ? 
WHERE PictureID = ?;

-- Example to delete an image
DELETE FROM Pictures WHERE PictureID = ?;
-- Create a new database if it doesn't exist
CREATE DATABASE IF NOT EXISTS character_data;

-- Use the created database
USE character_data;

-- Create a table for storing character names and values

CREATE TABLE IF NOT EXISTS characters 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL
);
-- Insert some sample data into the table
INSERT INTO characters (name, value) VALUES ('Character1', 'Value1');
INSERT INTO characters (name, value) VALUES ('Character2', 'Value2');
INSERT INTO characters (name, value) VALUES ('Character3', 'Value3');
INSERT INTO characters (name, value) VALUES ('Character4', 'Value4');
INSERT INTO characters (name, value) VALUES ('Character5', 'Value5');
-- Query to display all character names and values
SELECT * FROM characters;

select character from table character;