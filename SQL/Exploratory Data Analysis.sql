-- Exploratory Data Analysis EDA

SELECT * 
FROM world_life_expectancy1
 ; 

SELECT country,min(`Life expectancy`),max(`Life expectancy`),
round(max(`Life expectancy`)-min(`Life expectancy`),1)as life_increase_last_15years
FROM world_life_expectancy1
group by country
having min(`Life expectancy`)  <> 0
and max(`Life expectancy`) <> 0
order by life_increase_last_15years desc;


SELECT year , round(avg(`Life expectancy`),2)
FROM world_life_expectancy1
where (`Life expectancy`)  <> 0
and (`Life expectancy`) <> 0
group by year
order by year asc
;

select year,count(`Life expectancy`)
FROM world_life_expectancy1
where `Life expectancy` = 0
group by year;



select country,round(avg(`Life expectancy`),1) as life_exp,round(avg(gdp),1) as GDP
FROM world_life_expectancy1

group by country
having life_exp > 0
and gdp > 0
order by gdp desc;


select  
sum(case when gdp  <= 6342 then 1 else 0 end) low_life_gdp_count,
avg(case when gdp  <= 6342 then `Life expectancy` else null end) as low_life_exp_count,
sum(case when gdp  >= 6342 then 1 else 0 end) as high_life_gdp_count,
avg(case when gdp  >= 6342 then `Life expectancy` else null end) as high_life_exp
from world_life_expectancy1;



select status,count(distinct country),round(avg(`Life expectancy`))
from  world_life_expectancy1
group by status
;
select status,round(avg(`Life expectancy`))
from world_life_expectancy1
group by status;

select country,round(avg(`Life expectancy`),1) as life_exp,round(avg(bmi),1) as bmi
from world_life_expectancy1
group by country
having life_exp > 1
and bmi > 1
order by bmi asc;


select country,year,
`Life expectancy`,
`Adult Mortality`,
sum(`Adult Mortality`) over(partition by country order by year ) as roll_total
from world_life_expectancy1
