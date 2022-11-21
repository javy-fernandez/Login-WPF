create database MVVMLoginDb
go
use MVVMLoginDb
go
create table [User]
(
	Id UNIQUEIDENTIFIER primary Key default NEWID(),
	Username nvarchar (50) unique not null,
	[Password] nvarchar (100) not null,
	[Name]nvarchar (50) not null,
	LastName nvarchar (50) not null,
	Email  nvarchar (100) unique not null
)
go
insert into [User] values (NEWID(), 'admin', 'admin','Administrador','Advance', 'admin@gmail.com')
insert into [User] values (NEWID(), 'pedro', '4321','Pedro','Lopez', 'pedro@gmail.com')
insert into [User] values (NEWID(), 'joan', '1234','Joan','Marquez', 'Joan@gmail.com')
go

select *from [User]