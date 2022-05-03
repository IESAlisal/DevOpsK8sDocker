#CONTENEDOR SQLServer
#https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-linux-ver15&preserve-view=true&pivots=cs1-bash#pullandrun2019
docker rm sqlserver3 -f
    
#Crear contenedor
#La contraseña del usuario sa debe cumplir con las reglas de complejidad del SQLServer 2019
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=P@AssWord_2000" `
           -p 14334:1433 --name sqlserver3 -h sqlserver3 `
           -d mcr.microsoft.com/mssql/server:2019-latest

#Conectar con SQLServer por comando
   #docker exec -it sqlserver3
   #docker exec -it sqlserver3 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "P@AssWord_2000" 
#Conectar con SQLServer por sqlServer management studio.
   #ip_contenedor,puerto  (172.20.140.5,14333)

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