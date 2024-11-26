CREATE DATABASE  olympics;
use olympics;
create table players (
                       player_id INT PRIMARY KEY ,
                       NAME VARCHAR(50),
                       AGE INT ,
                       special_id int ) ;
                       drop table players;

INSERT INTO players (player_id, NAME,AGE,special_id)
VALUES (1,'Cristiano Ronaldo',32,2228),
       (2,'L.MESSI',30,2154),
       (3,'Neymar',25,2100),
       (4,'L. Suárez',30,2291),
       (5,'M. Neuer',31,1493),
       (6,'De Gea',26,1458);
                       
SELECT * FROM players ;

create table performance ( special_id int PRIMARY KEY ,
                           clubname varchar(50));
INSERT INTO performance (special_id, clubname)
VALUES(2228,'Real Madrid CF'),
	  (2154,'FC Barcelona'),
	  (2100,'Paris Saint-Germain'),
	  (2291,'FC Barcelona'),
      (1493,'FC Bayern Munich'),
      (1458,'Manchester United'),
      (1174,'FC Erzgebirge Aue'),
      (755,'Scunthorpe United'),
      (832,'Wycombe Wanderers'),
      (1194,'Swindon Town'),
	 (1302,'Crewe Alexandra'),
     (1031,'Scunthorpe United');
select* from performance;

## INNER JOIN 
select p.name,p.age,pr.clubname
from players as p
INNER JOIN performance as pr ON p.special_id = pr.special_id ;


#### LEFT JOIN
select p.name,p.age,pr.clubname
from players as p
LEFT JOIN performance as pr ON p.special_id = pr.special_id ;

#### RIGHT JOIN
select p.name,p.age,pr.clubname
from players as p
RIGHT JOIN performance as pr ON p.special_id = pr.special_id ;

#### FULL JOIN
select p.name,p.age,pr.clubname
from players as p
LEFT JOIN performance as pr ON p.special_id = pr.special_id 
UNION 
select p.name,p.age,pr.clubname
from players as p
RIGHT JOIN performance as pr ON p.special_id = pr.special_id ;


### CROSS JOIN
select p.name,p.age,pr.clubname
from players as p
CROSS JOIN performance as pr ON p.special_id = pr.special_id ;


### SELF JOIN
SELECT 
    p1.player_id AS player1_id,
    p1.name AS player1_name,
    p1.age AS player1_age,
    p2.player_id AS player2_id,
    p2.name AS player2_name,
    p2.age AS player2_age
FROM 
    players AS p1
JOIN 
    players AS p2 
ON 
    p1.special_id = p2.special_id;

