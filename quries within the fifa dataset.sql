SELECT * FROM fifa.`fifa olympics dataset`;
select  distinct name  , age 
from fifa.`fifa olympics dataset`
where age >30 ;

select nationality , count(*) as player_count 
from fifa.`fifa olympics dataset`
group by nationality ;

select club, count(*) as player_count
from fifa.`fifa olympics dataset`
group by club ;

select  name, Overall
FROM fifa.`fifa olympics dataset`
 WHERE OVERALL > 90 ;
 
 
 #### TOP N PLAYERS BY STAMINA 
 SELECT name, stamina, vision 
 from fifa.`fifa olympics dataset`
  order by stamina desc 
  limit 10;
  
  
  