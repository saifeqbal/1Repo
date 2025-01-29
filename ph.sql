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