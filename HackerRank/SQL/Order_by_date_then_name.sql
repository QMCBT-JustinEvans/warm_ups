CREATE TABLE DemoTable1526(CustomerName VARCHAR(20), PurchaseDate DATE);

INSERT INTO DemoTable1526 (CustomerName, PurchaseDate) 
VALUES('Adam','2019-06-01'),
		('Sam','2019-04-26'),
		('Chris','2019-05-24'),
        ('David','2019-10-10'),
        ('Bob','2019-12-31');

SELECT * FROM DemoTable1526
ORDER BY PurchaseDate > '2019-10-08' - INTERVAL 3 MONTH DESC, CustomerName DESC;