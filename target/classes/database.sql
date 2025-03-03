create database doctordb;
use doctordb;
create  table  User (
                        id int  primary key auto_increment ,
                        username varchar(200),
                        email  varchar(200) unique,
                        password  varchar (200) binary,
                        numberPhone int unique ,
                        Role enum("doctor" , "Patient" ) not null


);

create  table  Docotr (
                          DoctorId int primary key auto_increment,
                          userid int    ,
                          specialisation varchar(250),
                          foreign key (userid) references user(userid)


);

create  table  Patient (
                           PatientId int primary key auto_increment,
                           userid int ,
                           foreign key (userid) references user(userid)

);