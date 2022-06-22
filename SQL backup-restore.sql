CREATE DATABASE Wealth

CREATE TABLE assets(
AssentName nvarchar(50) NOT NULL PRIMARY KEY ,
UnitPrice float NOT NULL ,
Count int NOT NULL
);

CREATE DATABASE Wealth
ON(FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Wealth.mdf'),
(FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Wealth_log.ldf')
FOR ATTACH;

EXEC sp_detach_db 'Wealth' , 'true';

BACKUP DATABASE Wealth
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Wealth.bak';

RESTORE DATABASE Wealth
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Wealth.bak'; 
