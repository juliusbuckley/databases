CREATE DATABASE IF NOT EXISTS chat;

USE chat;

CREATE TABLE IF NOT EXISTS name (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);
/*
CREATE TABLE messages (
  /* Describe your table here.*/

-- );

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

