CREATE DATABASE IF NOT EXISTS chat;

USE chat;

DROP TABLE IF EXISTS `users`;
    
CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `message` VARCHAR(100) NULL DEFAULT NULL,
  `username` VARCHAR(20) NULL DEFAULT NULL,
  `roomname` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ALTER TABLE `messages` ADD FOREIGN KEY (username) REFERENCES `users` (`id`);
/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

