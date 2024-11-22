CREATE DATABASE cardDealershipDatabase;

USE carDealershipDatabase;

-- Table 1: dealerships 
----------------------------------------------------
CREATE 	TABLE dealerships (
	dealership_id INTEGER auto_increment not null primary key, 
    name varchar(50),
    address varchar(50),
    phone varchar(12));

SELECT *
FROM dealerships;

-- Insert data into dealerships
INSERT INTO dealerships (name, address, phone) VALUES
('Star Motors', '45-10 Queens Blvd, Queens, NY 11104', '555-123-4567'),
('Prime Auto Sales', '65-20 Roosevelt Ave, Queens, NY 11377', '555-234-5678'),
('Luxury Wheels', '22-15 31st St, Queens, NY 11105', '555-345-6789'),
('Speedster Auto', '74-25 Grand Ave, Queens, NY 11378', '555-456-7890'),
('Elite Car Hub', '89-15 Parsons Blvd, Queens, NY 11432', '555-567-8901'),
('Auto Galaxy', '20-30 Steinway St, Queens, NY 11105', '555-678-9012'),
('Rapid Motors', '41-60 Main St, Queens, NY 11355', '555-789-0123'),
('DriveNation', '136-11 Northern Blvd, Queens, NY 11354', '555-890-1234'),
('Car Haven', '87-10 Lefferts Blvd, Queens, NY 11418', '555-901-2345'),
('Auto Haven', '131-05 Jamaica Ave, Queens, NY 11418', '555-012-3456'),
('Metro Motors', '32-15 College Point Blvd, Queens, NY 11354', '555-123-6789'),
('Ultimate Autos', '96-20 Atlantic Ave, Queens, NY 11418', '555-234-7890'),
('Prestige Cars', '55-15 Myrtle Ave, Queens, NY 11385', '555-345-8901'),
('Urban Rides', '74-09 Rockaway Blvd, Queens, NY 11421', '555-456-9012'),
('City Auto Center', '20-20 Bell Blvd, Queens, NY 11360', '555-567-0123');

SELECT *
FROM dealerships;

-- Table 2: vehicles 
----------------------------------------------------
CREATE 	TABLE vehicles (
	VIN INTEGER  not null primary key, 
    Make varchar(50),
    Model varchar(50),
    Year varchar(12),
    color varchar(12),
    price varchar(12)
    
    );

SELECT *
FROM dealerships;

-- Insert data into vehicles
INSERT INTO vehicles (VIN, Make, Model, Year, Color, Price) VALUES
(10001, 'Ford', 'Mustang', '2022', 'Red', '35000'),
(10002, 'Ford', 'F-150', '2023', 'Blue', '45000'),
(10003, 'Ford', 'Escape', '2021', 'White', '32000'),
(10004, 'Ford', 'Explorer', '2022', 'Black', '40000'),
(10005, 'Ford', 'Bronco', '2023', 'Green', '42000'),
(10006, 'Dodge', 'Charger', '2022', 'Black', '38000'),
(10007, 'Dodge', 'Challenger', '2021', 'Red', '37000'),
(10008, 'Dodge', 'Durango', '2023', 'White', '46000'),
(10009, 'Dodge', 'Ram 1500', '2022', 'Silver', '50000'),
(10010, 'Dodge', 'Journey', '2021', 'Blue', '28000'),
(10011, 'BMW', 'X5', '2023', 'Black', '65000'),
(10012, 'BMW', '3 Series', '2022', 'White', '45000'),
(10013, 'BMW', '5 Series', '2021', 'Gray', '52000'),
(10014, 'BMW', 'X3', '2023', 'Blue', '47000'),
(10015, 'BMW', 'M4', '2022', 'Yellow', '72000');

SELECT *
FROM vehicles;

ALTER TABLE vehicles
ADD dealership_id INTEGER;

SELECT *
FROM vehicles;

ALTER TABLE vehicles
ADD CONSTRAINT fk_dealership FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id);

ALTER TABLE vehicles
MODIFY dealership_id INTEGER DEFAULT NULL;.

UPDATE vehicles SET dealership_id = 1 WHERE VIN = '10001'; -- Assign Star Motors to Mustang
UPDATE vehicles SET dealership_id = 2 WHERE VIN = '10002'; -- Assign Prime Auto Sales to F-150
UPDATE vehicles SET dealership_id = 3 WHERE VIN = '10003'; -- Assign Luxury Wheels to Escape
UPDATE vehicles SET dealership_id = 4 WHERE VIN = '10004'; -- Assign Speedster Auto to Explorer
UPDATE vehicles SET dealership_id = 5 WHERE VIN = '10005'; -- Assign Elite Car Hub to Bronco
UPDATE vehicles SET dealership_id = 6 WHERE VIN = '10006'; -- Assign Auto Galaxy to Charger
UPDATE vehicles SET dealership_id = 7 WHERE VIN = '10007'; -- Assign Rapid Motors to Challenger
UPDATE vehicles SET dealership_id = 8 WHERE VIN = '10008'; -- Assign DriveNation to Durango
UPDATE vehicles SET dealership_id = 9 WHERE VIN = '10009'; -- Assign Car Haven to Ram 1500
UPDATE vehicles SET dealership_id = 10 WHERE VIN = '10010'; -- Assign Auto Haven to Journey
UPDATE vehicles SET dealership_id = 11 WHERE VIN = '10011'; -- Assign Metro Motors to X5
UPDATE vehicles SET dealership_id = 12 WHERE VIN = '10012'; -- Assign Ultimate Autos to 3 Series
UPDATE vehicles SET dealership_id = 13 WHERE VIN = '10013'; -- Assign Prestige Cars to 5 Series
UPDATE vehicles SET dealership_id = 14 WHERE VIN = '10014'; -- Assign Urban Rides to X3
UPDATE vehicles SET dealership_id = 15 WHERE VIN = '10015'; -- Assign City Auto Center to M4;

SELECT 
		v.VIN,
        v.Make, 
        v.year, 
        d.name, 
        d.address
FROM 
	cardealershipdatabase.vehicles v
JOIN  
	cardealershipdatabase.dealerships d
ON 
	v.dealership_id = d.dealership_id;



