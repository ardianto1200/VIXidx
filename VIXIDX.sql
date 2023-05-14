create table DimCustomer(
CustomerID int not null primary key,
FirstName Varchar(50) not null,
LastName Varchar(50) not null,
Age Varchar(50) not null,
Gender Varchar(50) not null,
City Varchar(50) not null,
NoHp Varchar(50) not null
);
create table DimProduct(
ProductID int not null primary key,
ProductName Varchar(255) not null,
ProductCategory Varchar(255) not null,
ProductUnitPrice int not null
);
create table DimStatusOrder(
StatusID int not null primary key,
StatusOrder Varchar(50) not null,
StatusOrderDesc Varchar(50) not null,
);
create table FactSalesOrder(
OrderID int not null primary key,
CustomerID int not null FOREIGN KEY REFERENCES DimCustomer(CustomerID),
ProductID int not null FOREIGN KEY REFERENCES DimProduct(ProductID),
Quantity int not null,
Amount int not null, 
StatusID int not null FOREIGN KEY REFERENCES DimStatusOrder(StatusID), 
OrderDate date not null,
);