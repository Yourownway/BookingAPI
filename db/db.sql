
CREATE DATABASE IF NOT EXISTS BooksAPI;

USE BooksAPI;

DROP TABLE IF EXISTS Users;
CREATE TABLE Users 
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(100),
    password VARCHAR(255),
     createdAt datetime DEFAULT NULL,
    updatedA datetime DEFAULT NULL
    
);

DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(100),
     createdAt datetime DEFAULT NULL,
    updatedA datetime DEFAULT NULL
   
  
);
DROP TABLE IF EXISTS Books;

CREATE TABLE Books  
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50),
    auteur VARCHAR(50),
    categorieId INT,
    FOREIGN KEY (categorieId) REFERENCES Categories(id),
     createdAt datetime DEFAULT NULL,
    updatedA datetime DEFAULT NULL

);
DROP TABLE IF EXISTS Genres;

CREATE TABLE Genres 
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(100),
     createdAt datetime DEFAULT NULL,
    updatedA datetime DEFAULT NULL
    
  
);
DROP TABLE IF EXISTS BooksGenres;

CREATE TABLE BooksGenres  
( 
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    bookId INT,
    genreId INT, 
    FOREIGN KEY (bookId) REFERENCES Books(id),
    FOREIGN KEY (genreId) REFERENCES Genres(id),
     createdAt datetime DEFAULT NULL,
    updatedA datetime DEFAULT NULL
  
);
DROP TABLE IF EXISTS Bookings;


CREATE TABLE Bookings  
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId INT,
    bookId INT,
    FOREIGN KEY (userId) REFERENCES Users(id),
    FOREIGN KEY (bookId) REFERENCES Books(id),
    createdAt datetime DEFAULT NULL,
    updatedA datetime DEFAULT NULL
);
