--NATURAL JOIN

Select *
from employees
natural join jobs;

Select *
from jobs;

Select employees.first_name
      , employees.last_name
      ,jobs.job_title
from employees
natural join jobs;

Select first_name
      ,last_name
      ,job_title
      ,job_id --only for natural join do not have conflict
from employees
natural join jobs;

Select*
from employees
natural join jobs;

select*
from employees
where employee_id=100;

select*
from jobs
where lower(job_id)=lower('ad_pres');

select*
from employees
natural join jobs
natural join departments
where employee_id=102;

--JOIN USING
select*
from employees
JOIN JOBS USING(JOB_ID)
JOIN DEPARTMENTS USING (DEPARTMENT_ID)
where employee_id=100;

select*
from employees
JOIN JOBS USING(JOB_ID)
JOIN DEPARTMENTS USING (DEPARTMENT_ID, manager_id)
where employee_id=102;


Select*
from employees a
left join jobs b
on a.job_id=b.job_id
left join departments c
on a.manager_id=c.manager_id
where c.manager_id is not null;

select 107-63 from dual;

select distinct manager_id
from departments;

select*
from employees
JOIN JOBS USING(JOB_ID)
JOIN DEPARTMENTS USING (manager_ID);

--JOIN ON

select*
from employees t1
join jobs t2
on t1.job_id=t2.job_id;

select t1.*
      ,t2.job_title
      ,t2.max_salary
      ,t2.min_salary
      ,t3.*
from employees t1
join jobs t2
on t1.job_id=t2.job_id
join departments t3
on t1.department_id=t3.department_id
where t1.employee_id=102;




 
