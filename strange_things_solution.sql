# 1.Retrieve the names of the characters?

SELECT NAME AS Characters
FROM  characters;

#2.Find characters with age greater than 18?

SELECT NAME  AS CHARACTERS
FROM Characters
WHERE AGE > 18;

# 3.Find events in Season 2?

SELECT event_name ,season
FROM EVENTS
WHERE season = 2 ;

#4 Get details of the 'Mind Flayer' monster?

SELECT *
FROM MONSTERS
WHERE NAME ='Mind Flayer';

#5 Retrieve characters and their associated events?
SELECT C.name as 'character name',e.event_name
from characters C 
inner join  relationships r
on c. character_id=r.character1_id or c. character_id=r.character2_id
join events e on r.relationship_id=e.event_id;

#6 Calculate the total number of characters from each hometown?
 
 select hometown, count(*) as Total_num_of_Characters
 from characters;
 
#7 Retrieve characters who were involved in events in Season 1 or Season 2?
SELECT C.name as 'character name',e.event_name,e.season
from characters C 
inner join  relationships r
on c. character_id=r.character1_id or c. character_id=r.character2_id
join events e on r.relationship_id=e.event_id
where e.season in(1,2);

#8Find the top 3 oldest characters?
 
 select *
 from characters
 order by  age desc
 limit 3;
 
 #9 Find the average age of characters in Hawkins?
 select round(avg(age)) As  Average_age
 from characters;
 
 #10 Rank characters by age in descending order?
 
 SELECT name, age, rank() over(order by age desc ) AS Character_rank
 from characters;

 


 
 
