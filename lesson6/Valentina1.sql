Select employee_id
       ,last_name
       ,job_id
       ,department_id
From employees
Where department_id=90;

Select*
From employees;

Select*
From employees
Where last_name='King'

Select Distinct first_name 
from employees;

select*
from employees
where hire_date='21-sep-13';

select*
from employees
where job_id='AD_PRES';

select*
from employees
where salary<=3000;

select*
from employees
where salary <> 9000; 

select *
from employees
where salary >=3000;

select*
from employees
where salary between 9000 and 17000;

select*
from employees
where hire_date between '17-oct-11' and '07-feb-15';

select*
from employees
where manager_id in (107, 143, 201);

select*
from employees
where hire_date in ('16-nov-15', '20-oct-11', '12-jan-13');
 
 select*
 from employees 
 where first_name LIKE'E%';
 
 SELECT*
 FROM employees
 where first_name like'%e';
 
  SELECT*
 FROM employees
 where first_name like'%e%';
 
 select*
 from employees
 where phone_number like'650%';
 
select*
 from employees
 where commission_pct is null;

select*
 from employees
 where commission_pct is not null;
 
 select*
 from employees
 where salary>=10000
 and job_id like'%MAN%'
 and commission_pct is not null;
 
 select*
 from employees
 where salary>=10000
 or job_id like'%MAN%'
 or commission_pct is not null;

 select last_name
        ,department_id
        ,salary
from employees
where (department_id=60
or department_id=80)
and salary > 10000;
 
 Select *
 from employees
 where (job_id='SA_REP'
 or job_id='SA_MAN')
 and phone_number like '0%'
 order by salary Asc;
 
  Select last_name || first_name as fullname
         ,salary as salariu
  from employees
 order by 1 Asc, 2;
 
 Select *
 from employees 
 order by employee_id
 Fetch first 10 rows only;
 
Select *
 from employees 
 order by employee_id
offset 1 row Fetch first 18 rows with ties;




