CREATE DATABASE cardDealershipDatabase;

USE carDealershipDatabase;

SELECT *
FROM dealerships;


SELECT *
FROM dealerships;salescontract


 CREATE TABLE leaseContract (
leaseContractID INT AUTO_INCREMENT PRIMARY KEY,
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

leaseDeposit double,
leasecontractTaxes double,
leaseContractFees double,
leaseContractTotalCost double, 
FOREIGN KEY(VehicleVIN) references vehicles(vin)
);

DROP TABLE sales_contracts;
DROP TABLE vehicles;
DROP TABLE inventory;

SELECT *
FROM dealerships;

ALTER TABLE vehicles
ADD COLUMN type VARCHAR(15),
ADD COLUMN odometer INT;


DROP TABLE vehicles;

SELECT *
FROM vehicles;

ALTER TABLE vehicles
ADD dealership_id INTEGER;

SELECT *
FROM vehicles;

ALTER TABLE vehicles
ADD CONSTRAINT fk_dealership FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id);


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
    
DROP TABLE inventory;

DESCRIBE vehicles;

INSERT INTO inventory (vehicle_vin, dealership_id)
		values 
        (10001, 1),
		(10002,2),
		(10003,3),
		(10004,4),
		(10005,5),
		(10006,6),
		(10007,7),
		(10008,8),
		(10009,9),
		(10010,10),
		(10011,11),
		(10012,12),
		(10013,13),
		(10014,14),
		(10015,15);

SELECT *
FROM inventory;


INSERT INTO inventory (vehicle_vin, dealership_id)
SELECT vin, dealership_id
FROM vehicles;


