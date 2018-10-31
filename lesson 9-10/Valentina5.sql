Select* 
from employees
where employee_id=113;

Select* 
from departments;

update employees
set department_id=50
    ,first_name='Luis'
    ,phone_number='515.124.4540'
where employee_id=113;

 select job_id
       , salary
from employees;


update employees
set job_id='AG_MGR'
    ,salary=12008
where employee_id=113;


update employees
set (job_id, salary)=(select job_id
                             ,salary
                             from employees
                             where employee_id=205)
where employee_id=113;


insert into copy_emp
select* 
from employees;
                          
 select* 
 from copy_emp;
 
 update copy_emp
 set department_id = (select department_id
                      from employees
                      where employee_id=100);
select job_id
from employees
where employee_id=200;





 update copy_emp
 set department_id = (select department_id
                      from employees
                      where employee_id=100)
where job_id = (select job_id
                from  employees
                where employee_id=130);

 select* 
 from copy_emp;
 
 select*
 from departments
 where lower (department_name) like '%public%';
 
start transaction
delete from copy_emp
where department_id in (280,281, 282,283,70);
 
