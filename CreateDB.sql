create database memoryapp;
use memoryApp;

create table if not exists t_user (
	userID int primary key AUTO_INCREMENT,
    googleID varchar(64)
);

create table if not exists t_memory (
	memoryID int primary key,
	userID int not null,
    memorytitle varchar(128),
	memorybody varchar(2048),
    
	foreign key(userID) references t_user(userID)
);

create table if not exists t_tag (
	tagID int primary key,
    tag varchar(64),
    memoryID int,
    
    foreign key(memoryID) references t_memory(memoryID)
);

