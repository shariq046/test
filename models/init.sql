DROP TABLE IF EXISTS books;
BEGIN TRANSACTION;
CREATE TABLE bikes (
Model TEXT NOT NULL,
Brand TEXT NOT NULL,
ID INTEGER PRIMARY KEY,
Description TEXT,
Make TEXT,
Capacity TEXT,
TopSpeed INTEGER
);
INSERT INTO bikes (Model, Brand, ID, Description, Make, Capacity, TopSpeed) VALUES ('MT-01', 'Yamaha', 1, 'Powerful cruiser with a unique style.', '2008', '1670cc', 220);
INSERT INTO bikes (Model, Brand, ID, Description, Make, Capacity, TopSpeed) VALUES ('CBR1000RR', 'Honda', 2, 'High-performance sportbike for adrenaline enthusiasts.', '2022', '1000cc', 186);
INSERT INTO bikes (Model, Brand, ID, Description, Make, Capacity, TopSpeed) VALUES ('Street Triple', 'Triumph', 3, 'Nimble naked bike with a perfect blend of power and agility.', '2019', '765cc', 140);

COMMIT;