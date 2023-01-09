create database hospital;

use hospital;

create table staff(sid int primary key auto_increment,name varchar(30),gender varchar(3),email varchar(30),designation varchar(20),phone varchar(20),password varchar(30));

create table doctor(did int primary key auto_increment,name varchar(30),gender varchar(3),email varchar(30),specialization varchar(20),phone varchar(20),password varchar(30));

alter table doctor add yoe int;

create table bill(bid int primary key,doc_fee int,med_fee int,room_fee int,test_fee int);

create table prescription(medid int,name varchar(20),price int,quantity int,primary key(medid,name));

create table room(rid int primary key,type varchar(5),nod int);

create table test(tid int primary key,type varchar(20));

create table patient(pid int primary key auto_increment,name varchar(30),gender varchar(3),email varchar(30),phone varchar(20),password varchar(30),rid int default 0,tid int default 0,bid int default 0,did int,foreign key(rid) references room(rid),foreign key(bid) references bill(bid),foreign key(tid) references test(tid),foreign key(did) references doctor(did));

insert into bill values(0,1000,200,0,0);

insert into prescription values(0,'Paracetamol',50,1);

insert into room values(0,'Nil',0);

insert into test values(0,'nil');

insert into test values(1,'blood test');

insert into test values(2,'covid test');

insert into test values(3,'thyroid test');

insert into test values(4,'genetic test');

insert into bill values(1,1000,340,2000,600);

insert into bill values(2,1000,480,1500,400);

insert into bill values(3,1000,290,2000,980);

insert into room values(1,'AC',4);

insert into room values(2,'AC',3);

insert into room values(3,'N-AC',8);

insert into prescription values(1,'DOLO',90,4);

insert into prescription values(2,'Aspirin',100,1);

insert into prescription values(3,'Alkof',125,1);

insert into prescription values(1,'Tretan',150,6);

insert into doctor values(1,'Dr.Sagar Sahadevan','m','sagar1111@gmail.com','cardiologist','9748759238','admin123',22);

insert into doctor values(2,'Dr.KP Gangadhar','m','kpg123@gmail.com','neurologist','9091462352','admin123',22);

insert into doctor values(3,'Dr.S Raveendran','m','raveendran@hotmail.com','ENT','8213932619','admin123',7);

insert into doctor values(4,'Dr.Linoj Antony','m','linant87@gmail.com','dentist','7985735742','admin123',8);

insert into doctor values(5,'Dr.A Banumathi','f','banu@rediff.com','gynecologist','9762821401','admin123',15);

insert into doctor values(6,'Dr.Shafeeq Parambil','m','shafeeq42@gmail.com','dermatologist','8904328915','admin123',19);

insert into doctor values(7,'Dr.Leena Jose','f','ljose@yahoo.com','pediatric','7994732816','admin123',3);

insert into doctor values(8,'Dr.Jacob Kurian','m','jacob71@rocketmail.com','orthopedic','9193748364','admin123',14);

insert into doctor values(9,'Dr.Govind S Nair','m','govindnair@gmail.com','opthalmologist','8943678398','admin123',9);

insert into doctor values(10,'Dr.Muhammad Arif','m','arifarif987@gmail.com','surgeon','9940357196','admin123',11);

insert into doctor values(11,'Dr.Kammapa P','f','kammapa78@gmail.com','urology','6938589392','admin123',25);

insert into doctor values(12,'Dr.Venkat Naidu','m','naiduvenkat@hotmail.com','oncology','9876378128','admin123',7);

insert into patient values(1,'hariharan','m','hari@gmail.com','8983601912','p123',1,1,1,1);

insert into patient values(2,'harry','m','harry@gmail.com','8983601909','p123',2,2,2,3);

alter table patient add medid int;

alter table patient add foreign key(medid) references prescription(medid);

update patient set medid=1 where pid=1;

update patient set medid=2 where pid=2;

update patient set medid=3 where pid=3;

update patient set medid=3 where pid=4;

