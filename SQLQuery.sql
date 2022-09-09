create database OAF_DB

use OAF_DB

create table Branch(
branch_id int primary key ,
contact_person varchar(30) not null,
location varchar(30) not null,
Password int not null
)



insert Branch values (1,'Subramanyam','HSR Layout',123)
insert Branch values (2,'Murthi','Yesawnthpur',123)
insert Branch values (3,'Alka','Tumkur',123)

select * from Branch

create table Seat(
branch_id int references Branch(branch_id),
class_id int not null,
seats int not null
)


insert Seat values (1,1,20)
insert Seat values (2,1,15)
insert Seat values (3,1,20)
insert Seat values (1,2,10)
insert Seat values (2,5,10)
insert Seat values (3,5,15)

select * from Seat

create table Applications(
appid int primary key identity,
name varchar(50) not null,
address varchar(50) not null,
dob datetime not null,
age int not null,
branch_id int references Branch(branch_id),
class_id int,
status int default 0
)
insert into Applications values ('VK','Del','11/11/2013',6,1,1,1)

create table ProcessedApplications(
processID int primary key identity,
appID int references Applications(appid) not null,
adminID int references Branch(branch_id),
comment varchar(100),
dateOfResolve datetime default getdate(),
)
drop table ProcessedApplications
--stored procedure

--insert Application

alter procedure sp_InsertApplication( @name varchar(100), @add varchar(100), @dob date,  @age int, @bid int,  @cid int, @aid int out)
as
begin
insert into Applications(name,address,dob,age,branch_id,class_id) values(@name, @add, @dob, @age, @bid, @cid)
select @aid = @@IDENTITY
end

create procedure sp_CheckStatus(@appid int)
as
begin
select Branch.contact_person, Applications.status  from Applications inner join Branch on Applications.branch_id = Branch.branch_id where appid=@appid;
end


create proc sp_LoginAdmin(@id int,@pass int)
as 
begin
select * from Branch where branch_id=@id and Password=@pass
end


alter procedure sp_UpdateApplication(@appid int, @comment varchar(100), @adminId int, @classId int,@pid int out)
as
begin
insert into ProcessedApplications(appID,adminID,comment) values(@appid, @adminId, @comment)
if @comment = 'accepted'
    begin
    update Seat set seats = seats-1 where branch_id = @adminId AND class_id= @classID
    update Applications set status=1 where appid=@appid
    end
select @pid=@@IDENTITY
end

alter procedure sp_UpdateReport
as
begin
--select count(*) from Applications group by status as Countapp, count() as countprocess from applications
select 
COUNT(*) as countAPP,
sum(CASE when status=1 THEN 1 else 0 end) as countProcess
from Applications
end
