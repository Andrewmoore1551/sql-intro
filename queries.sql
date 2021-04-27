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


