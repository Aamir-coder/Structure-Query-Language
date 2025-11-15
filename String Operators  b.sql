Create Database University121;


Use University121;
Create Table Student12(
id int not null unique,
name Varchar(20) not null,
percentage int not null,
age int null check(age>=18),
gender varchar(1) not null,
phone varchar(10) not null unique,
city varchar(15) not null Default "UP");
insert into Student12(id,name,percentage,age,gender,phone,city)values
(1,"Ram Kumar",45,19,"M","41654","Agra"),
(2,"Sarita Kumari",55,22,"F",'454545',"Delhi"),
(3,"Salman Khan",62,20,"M","454544","Agra"),
(4,"Juhi Chawala",47,18,"F","5665645","Bhopal"),
(5,"Anil Kapoor",74,22,"M","3526455","Agra"),
(6,"Johan Abharam",64,21,"M","6565466","Delhi"),
(7,"Sahid Kapoor",52,20,"M","6569454","Agra");
select *from Student12;

select id,upper(name)as name,percentage from Student12;

select id, ucase(name)as name ,percentage from Student12;

select id,lower(name)as name ,percentage from Student12;

select id,lcase(name) as name,percentage from Student12;

select name,ucase(city)as city,ucase(name)as name from Student12;

select id ,name,character_length(name)as characters from Student12;

select id,name,length(city) as characters from Student12;

select id,concat(name,"      ",age) as name from Student12;

select id,concat(name,"___",Age,"___",percentage)as name from Student12;

select concat("Sanskar","Yadav") as my_name;

select concat_ws("-","Sanskar","yadav","Hello","Class") as name;

select concat_ws("*","Sanskar","yadav","Hello","Class") as name;

select concat_ws("  ","Sanskar","yadav","Hello","Class") as my_name;

select"   Sanskar Yadav    " as my_name;

select ltrim(	"Sanskar Yadav	") as name ;

select rtrim("		Sanskar yadav		");

select trim("		Sanskar yadav		");

select position("world" in "Hello world");

select position("O" in "hello world");

select instr("hello world","ell");

select instr("l","Hello world");

select locate("ell","Hello World");

select locate("L","Hello world",5);

select substring("SAnskar Yadav",5);

select substring("	Sanskar yadav",3);

select substring("	Sanskar yadav",6,3);

select substring("	Sanskar yadav",3,6);

select substring("	Sanskar yadav",-3,6);

select substring("	Sanskar yadav",3);

select substring("	Sanskar yadav",-6,3);

select mid("Sanskar Yadav",3,6);

select substring_index("WWW.Sanskar yadav.net",".",1)as web;

select substring_index("www.sanskar.net",".",2);

select substring_index("www.Sanskar yadav .Net","a",2);

select left("sanskar yadav",3);

select left("Sanskar",5);

select right("Sanskar yadav",5);

select rpad("Sanskar Yadav",20,"-");

select rpad("Sanskar yadav",20,"+");

select lpad("Sanskar Yadav",20,"-");

select lpad("Sanskar yadav",18,"+");

select space(10);

select reverse("Sanskar Yadav");

select replace("Sanskar yadav","yadav","Mr.");

select strcmp("Sanskar Yadav","Sanskar Yadav");

select strcmp("Sanskar yadav","Sanskar");

select strcmp("Sanskar","Sanskar Yadav");

select format(235.36551,3);

select field("a","x","b","K");

select field("a","x","A","k");

select field(5,"a","x","a","k");

select field(5,0,4,5,7,0);

select field(5,7,5,7,5,7,2,3);

select field("a","a","b");

select find_in_set("Mohan","Ram,Mohan,Shyam");

### Date Functions

select current_date();

select curdate();

select sysdate();

select now();

select date("2019-10-15 09:34:21");

select curtime();

select time("2019-10-15 09:34:21");

select month("2019-10-15 09:34:21");

select monthname("2019-10-15 09:34:21");

select year("2019-10-15 09:34:21");

select quarter("2019-10-15 09:34:21");

select day("2019-10-15 09:34:21");

select dayofmonth("2019-10-15 09:34:21");

select dayname("2019-10-15 09:34:21");

select dayofweek("2019-10-15 09:34:21");

select dayofyear("2019-10-15 09:34:21");

select dayofmonth("2019-10-15 09:34:21");

select week("2019-10-15 09:34:21");

select weekday("2019-10-15 09:34:21");

select weekday("2025-10-9  9:20:30");

select yearweek("2025-10-9  9:20:30");

select last_day("2025-10-9  9:20:30");

SELECT extract(month from "2025-10-9  9:20:30");