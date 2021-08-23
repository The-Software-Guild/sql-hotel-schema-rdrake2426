USE hotel;

LOAD DATA LOCAL INFILE "D:/User Folder/Documents/MThree/Training Notes/hotel rooms.csv"
INTO TABLE room
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE "D:/User Folder/Documents/MThree/Training Notes/hotel guests.csv"
INTO TABLE guest
FIELDS TERMINATED BY ','
(name,address,city,postCode,phoneNumber);

LOAD DATA LOCAL INFILE "D:/User Folder/Documents/MThree/Training Notes/hotel reservation.csv"
INTO TABLE reservation
FIELDS TERMINATED BY ','
(guestId,roomId,adults,children,startDate,endDate,totalCost)
WHERE roomId IS ;


DELETE FROM guest WHERE NAME = "Jeremiah Pendergrass";

SELECT * FROM room;

SELECT * FROM guest;

SELECT * FROM reservation;
