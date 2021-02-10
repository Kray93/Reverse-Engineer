### Schema
DROP DATABASE IF EXISTS burger_sequelize_db;
CREATE DATABASE burger_sequelize_db;
USE burger_sequelize_db;

CREATE TABLE burgers
(
	id INT NOT NULL AUTO_INCREMENT,
	burger_name VARCHAR(255) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);