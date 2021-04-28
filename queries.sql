--- Part One ---
create table "Employees" (
                      "FullName" TEXT NOT NULL,
                      "Salary" INT,
                      "JobPosition" TEXT NOT NULL,
                     "PhoneExtension" INT,
                     "IsPartTime" TEXT
                     );


INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Andrew Moore', 20000, 'IT', '411', False);

    INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                    VALUES ('Tom Bryan', 10000, 'Cook', '422', True);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Curtis Bryan', 15000, 'Cook', '455', False);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Guy Dude', 100000, 'Chef', '111', False);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Hank Hill', 5000, 'Sales', '222', True);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Cat Dog', 12000, 'Sales', '212', False);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Allan Jack', 11000, 'Janitor', '888', False);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Jack Daniels', 200000, 'Manager', '999', False);

"Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
    VALUES ('Tim Allen', 20500, 'Manager', '989', True);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                VALUES ('Jim Hamlin', 200500, 'Customer Service', '979', False);


SELECT * FROM "Employees";

SELECT "FullName", "IsPartTime" FROM "Employees";

 INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
                 VALUES ( 'Ashley Sharp', 450, 'Software developer', 001, 'True');

UPDATE "Employees"
   SET "Salary" = 500 WHERE "JobPosition" = 'Cook';


DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--- Second Part ---


CREATE TABLE "Departments" (
                         "Id" SERIAL PRIMARY KEY,
                         "DepartmentsName" TEXT NOT NULL,
                         "Building" TEXT NOT NULL
                        );

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NOT NULL REFERENCES "Departments" ("Id");

CREATE TABLE "Products" (
                       "Id" SERIAL PRIMARY KEY,
                       "Price" NUMERIC NOT NULL,
                       "Name" TEXT NOT NULL,
                       "Description" TEXT,
                       "QuantityInStock" NUMERIC NOT NULL
                      );

CREATE TABLE "Order" (
                  "Id" SERIAL PRIMARY Key,
                  "OrderNumber" TEXT NOT NULL,
                  "DatePlaced" DATE NOT NULL,
                  "Email" TEXT NOT NULL
                );

 CREATE TABLE "ProductOrder" (
                           "OrderQuantity" INT NOT NULL,
                           "OrderId" INT NOT NULL,
                           "ProductId" INT NOT NULL
                          );


INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES('Tim Smith', 40000, 'Programmer', 123, False);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES('Barbara Ramsey', 80000, 'Manager', 224, False);

INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES('Tom Jones', 32000, 'Admin', 456, true);

INSERT INTO "Departments"("DepartmentName", "Building")
VALUES ('Development', 'Main');

INSERT INTO "Departments"("DepartmentName", "Building")
VALUES ('Marketing', 'North');

INSERT INTO "Products" ( "Price", "Name", "Description", "QuantityInStock" )
                VALUES (12.45, 'Widget', 'The Original Widget', 100);

INSERT INTO "Products" ( "Price", "Name", "Description", "QuantityInStock" )
                VALUES ('99.99', 'FLowbee', 'Perfect for Haircuts', 3);

INSERT INTO "Order" ("OrderNumber", "DatePlaced", "Email")
             VALUES ('x529', '2020-01-01 16:55:00', 'Person@example.com');

INSERT INTO "ProductOrder" ("OrderQuantity", "OrderId", "ProductId")
                    VALUES (3, 1, 1);

INSERT INTO "ProductOrder" ("OrderQuantity", "OrderId", "ProductId")
                    VALUES ( 2, 1, 1);

SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId"  =  "Departments"."Id" WHERE "Departments"."BUILDING" = 'EastSide';

SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId"  =  "Departments"."Id" WHERE "Departments"."BUILDING" = 'NorthSide';
                                   
SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId"  =  "Departments"."Id" WHERE "Departments"."BUILDING" = 'Main';

SELECT * FROM "Order" JOIN "ProductOrder" ON "ProductOrder"."OrderId" = "Order"."Id"
  JOIN "Products" ON "Products"."Id" = "ProductOrder"."ProductId" WHERE "Products"."Id" =2;

SELECT "ProductOrder"."OrderQuantity" FROM "Order" JOIN "ProductOrder" ON "ProductOrder"."OrderId" = "Order"."Id"
  JOIN "Products" ON "Products"."Id" = "ProductOrder"."ProductId" WHERE "Products"."Name" = 'Flowbee' AND "Order"."OrderNumber" = 'X529';
