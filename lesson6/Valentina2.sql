Select *
From employees
Where employee_id = &first_var;

Select *
From employees
Where first_name ='Jennifer';

Select *
From employees
Where first_name ='&first_name';

Select *
From employees
Where hire_date ='&date_var';
--where hire_date = '07-FEB-15'

Select first_name
       ,last_name
       ,&hide_column
from employees
where hire_date= '&date_var' --03-JAN-14 
order by &hide_column;

Select employee_id
       ,last_name
       ,first_name
       ,salary
       ,&&hide_column
From employees
order by &hide_column DESC;

Select employee_id
       ,last_name
       ,first_name
       ,salary
       ,&&hide_column
       ,&&department_column
From employees
order by &hide_column DESC, &department_column ASC;

undefine department_column;
undefine hide_column;

set verify on
Select employee_id
       ,last_name
       ,first_name
       ,salary
       ,'&hide_column'
From employees
where hire_date='&hide_column';


select first_name
       , last_name
       ,Lower (first_name) as lower
       ,Upper (last_name) as upper
       ,Initcap (last_name) as initcap
from employees;

select first_name
       , last_name
from employees
where lower (last_name) like '%a%';

select first_name||''|| last_name as fullname_1
      , concat (first_name, last_name) as fullname_2
from employees;

select first_name
      ,first_name||' '|| last_name as fullname_1
      ,concat(first_name, last_name) as fullname_2
      ,substr(first_name,1,3) as substr_1
      ,substr(first_name,6,3) as substr_2
      ,substr(first_name,-3,3) as substr_3
      ,substr('MD-2002, or.Chisinau, str. Mihai Eminescu 12, ap.28', 1,15) as substr_3_1
      ,length (first_name) as length_1
      ,instr(lower(first_name,'e',1,2), as instr_name 
from employees;

