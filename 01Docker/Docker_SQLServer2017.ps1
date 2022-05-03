#CONTENEDOR SQLServer
#https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-2017&pivots=cs1-bash
docker rm sqlserver1 -f
docker rm sqlserver2 -f
    
#Crear contenedor
#La contraseña del usuario sa debe cumplir con las reglas de complejidad del SQLSever
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=P@AssWord_2000" -p 14333:1433 --name sqlserver1 -h sqlserver1 -d mcr.microsoft.com/mssql/server:2017-latest
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=P@AssWord_2000" -p 1433:1433  --name sqlserver2 -h sqlserver2 -d mcr.microsoft.com/mssql/server:2017-latest

#Conectar con SQLServer por comando
   #docker exec -it sqlserver1
   #docker exec -it sqlserver1 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "P@AssWord_2000" 
#Conectar con SQLServer por sqlServer management studio.
   #ip_contenedor,puerto  (172.20.140.5,14333)

#probar

#probar SQL Server

#CREATE DATABASE TestDB
#GO
#SELECT Name from sys.Databases
#GO
#Insert data. Next create a new table, Inventory, and insert two new rows.
#USE TestDB
#CREATE TABLE Inventory (id INT, name NVARCHAR(50), quantity INT)
#INSERT INTO Inventory VALUES (1, 'banana', 150); INSERT INTO Inventory VALUES (2, 'orange', 154);
#GO
#Select data
#SELECT * FROM Inventory WHERE quantity > 152;
#GO