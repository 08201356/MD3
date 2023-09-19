CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class(
 ClassID INT NOT NULL auto_increment primary key,
 ClassName varchar(60) not null,
 StartDate datetime,
 Status Bit
);
create table Student(
 StudentID int not null auto_increment primary key,
 StudentName varchar(30) not null,
 Address varchar(50),
 Phone varchar(20),
 Status bit,
 ClassID int not null,
 foreign key (ClassID) references Class(ClassID)
);
create table Subject(
 SubID int not null auto_increment primary key,
 SubName varchar(30) not null,
 Credit tinyint not null default 1 check (Credit >= 1),
 Status bit default 1
);
create table Mark(
 MarkId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 SubId INT NOT NULL,
 StudentId INT NOT NULL,
 Mark FLOAT DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
 ExamTimes TINYINT DEFAULT 1,
 UNIQUE (SubId, StudentId),
 FOREIGN KEY (SubId) REFERENCES Subject (SubId),
 FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
 );