create database employee_attirtion;
use employee_attirtion;
select * from emp_table;

select distinct(age) from emp_table;
select count(*) from emp_table where age=18; # number of new employees = 8
select max(age) from emp_table;
select count(*) from emp_table where age=60;
select count(*) from emp_table where age=18;
select distinct(dailyrate) from emp_table;
select dailyrate,count(*) as counts from emp_table group by dailyrate order by counts;
select * from emp_table where dailyrate=102; #details of minimum paying emloyee
select * from emp_table where dailyrate=1499; #details of maximum paying emloyee
select max(dailyrate) from emp_table;

select * from emp_table;
select distinct(distancefromhome) from emp_table;
select distancefromhome,count(*) as d from emp_table group by distancefromhome order by d;
select max(distancefromhome) from emp_table; # employees maximum distance from home = 29
select min(distancefromhome) from emp_table; # employees minimum distance from home = 1
select count(*) from emp_table where distancefromhome=29; # number of employees who have maximum distence = 33
select count(*) from emp_table where distancefromhome=1; # number of employees who have minimum distence = 239

select businesstravel,count(*) as counts from emp_table group by businesstravel order by counts; #travel category
select age,gender,count(*)as counts from emp_table group by age,gender order by counts; #age category
select maritalstatus,gender,count(*) as counts from emp_table group by maritalstatus,gender order by counts; #marital status category
select department,gender,count(*) as counts from emp_table group by department,gender order by counts; # department category

select avg(age) from emp_table;
select age,case when age>=18 and age<=30 then "young adult"
when age>=31 and age<=45 then "middle aged adult"
else "old adults" end as age_category from emp_table;

update emp_table set age_category=case when age>=18 and age<=30 then "young adult"
when age >=31 and age<=45 then "middle aged adult"
else "old adults" end;

alter table emp_table add column age_category varchar(100) after age; 

describe emp_table;

select * from emp_table;

select educationfield,jobrole,count(*) as count from emp_table group by educationfield,jobrole order by count; #categorize education field and job role

select age_category,jobrole,count(*) as count from emp_table group by age_category,jobrole order by count; #categorize age_category and jobrole

select department,gender,count(*) as count from emp_table group by department,gender order by count; #categorize department and gender and their counts

select attrition,gender,count(*) as counts from emp_table group by attrition,gender order by counts; #categorize attrtion and gender and their counts

select educationfield,jobrole,count(*) as count from emp_table group by educationfield,jobrole order by count; #categorize education field and job role

select age_category,jobrole,count(*) as count from emp_table group by age_category,jobrole order by count; #categorize age_category and jobrole

select department,gender,count(*) as count from emp_table group by department,gender order by count; #categorize department and gender



select distinct(educationfield) from emp_table;

select distinct(education) from emp_table;

select age_category,gender,count(*) as count from emp_table group by age_category,gender order by count; #categorize age_category and gender

select * from emp_table;

select attrition,businesstravel,count(*) as counts from emp_table group by attrition,businesstravel order by counts; # categorize attrition and bussiness travel and their count

select attrition,educationfield,count(*) as counts from emp_table group by attrition,educationfield order by counts; # number of attrition based on education field

select jobsatisfaction,maritalstatus,count(*) as counts from emp_table where jobsatisfaction=1 group by jobsatisfaction,maritalstatus order by counts; # married employees are not satisfied based on others

describe emp_table;

select gender,count(*)from emp_table group by gender;

select * from emp_table;

create view new1 as
select attrition,department from emp_table; 

select * from new1;