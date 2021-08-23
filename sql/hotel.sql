DROP DATABASE if EXISTS hotel;
CREATE OR REPLACE DATABASE hotel;
USE hotel;

CREATE TABLE room (
	id 			INT PRIMARY KEY,
	TYPE	ENUM('Double','Single','Suite'),
	ADAAccessible ENUM('No','Yes'),
	standardOccupancy INT,
	maximumOccupancy INT,
	basePrice INT,
	extraPrice INT
);

CREATE TABLE amenity (
	id 			INT AUTO_INCREMENT PRIMARY KEY,
	roomId		INT,
	TYPE	ENUM('Microwave','Jacuzzi','Refridgerator','oven'),
	CONSTRAINT fk_ame_roomId FOREIGN KEY (roomId) REFERENCES room(id)
	ON DELETE CASCADE
);

CREATE TABLE guest (
	id 			INT auto_increment PRIMARY KEY,
	name		VARCHAR(50),
	address VARCHAR(50),
	city VARCHAR(30),
	postCode VARCHAR(8),
	phoneNumber VARCHAR(20)
);

CREATE TABLE reservation (
	id 			INT auto_increment PRIMARY KEY,
	guestId		INT,
	roomId 		INT,
	adults INT,
	children INT,
	startDate DATETIME,
	endDate DATETIME,
	totalCost float,
	CONSTRAINT fk_res_roomId FOREIGN KEY (roomId) REFERENCES room(id)
	ON DELETE CASCADE,
	CONSTRAINT fk_res_guestId FOREIGN KEY (guestId) REFERENCES guest(id)
	ON DELETE CASCADE
);
