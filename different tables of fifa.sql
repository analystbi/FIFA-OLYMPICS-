create database joy ;
use joy ;
create table midfielders(
           cm int  ,
           cdm int,
           cam int );
insert into midfielders (cm,cdm,cam)
values(50,62,89),
      (84,59,92),
      (79,59,88);
show columns from midfielders ;
select * from midfielders; 

create table goalkeepers (
		  kicking int PRIMARY KEY ,
           positioning int ,
           reflexes int );
INSERT INTO goalkeepers (kicking, positioning, reflexes)
values(7,11,15),
(6,11,15),
(25,31,33);

select * from  goalkeepers  ;     

create table defenders (
                 CB INT PRIMARY KEY ,
                 CF INT ,
                 ID INT );
                 
INSERT INTO defenders (CB, CF,ID)
values(7,11,15),
(6,11,15),
(25,31,33);

SELECT * FROM defenders;
                 
                 
                 
                   