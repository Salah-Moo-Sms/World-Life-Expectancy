
-- Data Cleaning


SELECT * 
FROM world_life_expectancy1; 


-- 1. Identify duplicates
-- 2. Remove any columns and rows 
-- 3. Handle missing values 
-- 4. Fill missing life expectancy


SELECT country,year,concat(country,year),count(concat(country,year)) 
FROM world_life_expectancy1 
group by country,year,concat(country,year)
having count(concat(country,year)) > 1;



select *
from(
SELECT row_id,concat(country,year),
row_number() over(partition by concat(country,year) order by concat(country,year)) as row_num
FROM world_life_expectancy1)as row_table
where row_num > 1
; 


delete from world_life_expectancy1
where 
row_id in (
select row_id
from(
SELECT row_id,concat(country,year),
row_number() over(partition by concat(country,year) order by concat(country,year)) as row_num
FROM world_life_expectancy1)as row_table
where row_num > 1)

;


SELECT *
FROM world_life_expectancy1
where status = ''; 



update world_life_expectancy1 t1
 join world_life_expectancy1 t2
  on t1.country = t2.country
set t1.status ='developing'
  where  t1.status =''
  and t2.status <>''
  and t2.status ='developing' 
  ;


  update world_life_expectancy1 t1
 join world_life_expectancy1 t2
  on t1.country = t2.country
set t1.status ='developed'
  where  t1.status =''
  and t2.status <>''
  and t2.status ='developed'
  ;



  select *
  from world_life_expectancy1
  where `Life expectancy` = '';
  
  
  select t1.country,t1.year,t1.`Life expectancy`,t2.country,t2.year,t2.`Life expectancy`,
  t3.country,t3.year,t3.`Life expectancy`,
  round((t2.`Life expectancy` + t3.`Life expectancy`)/2,1) as life_exp
  from world_life_expectancy1 t1
  join world_life_expectancy1 t2
  on t1.country=t2.country 
  and t1.year=t2.year -1 
  
  join world_life_expectancy1 t3
  on t1.country=t3.country 
  and t1.year=t3.year +1
  where t1.`Life expectancy` = ''
  ;


  update  world_life_expectancy1 t1
  join world_life_expectancy1 t2
  on t1.country=t2.country 
  and t1.year=t2.year -1 
  
  join world_life_expectancy1 t3
  on t1.country=t3.country 
  and t1.year=t3.year +1
  set t1.`Life expectancy` =  round((t2.`Life expectancy` + t3.`Life expectancy`)/2,1  as life_exp)  
  where  t1.`Life expectancy` = ''
  
  ;

