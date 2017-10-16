use master 
go
if exists (select * from sys.databases where name='School') drop database School
go
create database School
go
use School
go
create table Classes (
	ClassID int primary key identity(1,1),
	ClassName nvarchar(100) not null
)
create table Student(
	StudentID int primary key identity(1,1),
	StudentName nvarchar(100) not null,
	StudentPhone nvarchar(20) not null,
	StudentAddress nvarchar(200),
	ClassID int foreign key references Classes(ClassID)
)
go
insert into Classes(ClassName) values('C#')
insert into Classes(ClassName) values('Java')
insert into Classes(ClassName) values('NodeJS')
insert into Classes(ClassName) values('PHP')
go
select * from Classes
select * from Student
go
insert into Student(StudentName, StudentPhone, StudentAddress, ClassID)
values (N'Phạm Văn A','0987654321',N'Hà Nội',1)

insert into Student(StudentName, StudentPhone, StudentAddress, ClassID)
values (N'Nguyễn Thị B','0987654321',N'Nam Định',2)

insert into Student(StudentName, StudentPhone, StudentAddress, ClassID)
values (N'Trần Văn Đông','0981234321',N'Hải Phòng',3)

insert into Student(StudentName, StudentPhone, StudentAddress, ClassID)
values (N'Mai Phương Thúy','0987612312',N'Thanh Hóa',2)