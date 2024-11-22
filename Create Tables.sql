
-- Creating Tables 


-- Table 1: dealerships 
--------------------------------------------------------------
CREATE 	TABLE dealerships (
	dealership_id INTEGER auto_increment not null primary key, 
    name varchar(50),
    address varchar(50),
    phone varchar(12));

-- Table 2: vehicles 
------------------------------------------------------------
CREATE TABLE vehicles (
    vin INT PRIMARY KEY,
    year INT,
    make VARCHAR(40),
    model VARCHAR(50),
    vehicleType VARCHAR(50),
    color VARCHAR(15),
    odometer INT,
    price DOUBLE
);

-- Table 3:  inventory (track which dealership has the vehicle) 
-----------------------------------------------------------------------------------------------------------
CREATE TABLE inventory (
        vehicle_vin int,
        dealership_id int,
        primary key ( vehicle_vin, dealership_id),
        foreign key(vehicle_vin) references vehicles(VIN),
        foreign key(dealership_id) references dealerships(dealership_id)
        );

 -- Table 4 - Creating Sales Contract Table 
 ------------------------------------------------------------
 CREATE TABLE SalesContract (
SalesContractID INT AUTO_INCREMENT PRIMARY KEY,
ContractDate VARCHAR(60),
CustomerName VARCHAR(100),
CustomerEmail VARCHAR(100),
VehicleVIN INT,
VehicleYear INT,
VehicleMake VARCHAR(40),
VehicleModel VARCHAR(50),
VehicleType VARCHAR(50),
VehicleColor VARCHAR(50),
VehicleMiles INT,
VehiclePrice double,
SalesContractTaxes DOUBLE,
SalesContractRecordingFee DOUBLE,
SalesContractProcessingFee DOUBLE,
isFinance BOOLEAN,
FOREIGN KEY(VehicleVIN) references vehicles(vin)
);
