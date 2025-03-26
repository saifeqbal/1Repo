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

CREATE TABLE Users 
(
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DateOfBirth DATE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
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

-- Create the articles table

CREATE TABLE articles (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL
);

-- Create the article_images table
CREATE TABLE article_images 
(
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    article_id INT NOT NULL,
    image_url VARCHAR(255) NOT NULL ,
    alt_text VARCHAR(255) NOT NULL ,
    description TEXT,
    FOREIGN KEY (article_id) REFERENCES articles(article_id)
);

