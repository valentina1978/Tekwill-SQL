select phone_number 
      ,to_number (replace (phone_number,'.',','),'999,999,9999') as to_number_1
      ,to_number (replace (phone_number,'.',','),'9999999999')as to_number_2
      ,to_char (145.782,'999D999') as to_char
from employees
where employee_id between 100 and 144;



select first_name ||' '||Last_name as fullName
       ,job_id
       ,salary
       ,department_id
       ,manager_id
       ,CASE job_id when 'ST_CLERK' THEN salary *0.5
                    when 'AC_ACCOUNT' THEN SALARY *0.75
                    when 'ST_MAN' THEN salary * 0.4
      ELSE salary END as salary_modified
      ,CASE WHEN job_id='IT_PROG' and salary >6000 Then department_id
            WHEN job_id='SA_REP' and salary >8000 Then department_id
      else manager_id
      END as case_with_more_condition
      ,DECODE (JOB_ID, 'ST_CLERK', salary *0.5) as ST_CLERK_O5
               ,'AC_ACCOUNT', SALARY *0.75 as AC_ACCOUNT_075
               ,'ST_MAN', salary * 0.4 AS ST_MAN_04
               ,SALARY as salary_with_decode
from employees;


select sum (salary) as total_salary
       ,min(salary) as min_salary
       ,max(salary) as max_salary
       ,avg(salary) as avg_salary
       ,count(employee_id) as count_employee_id
       ,count (commission_pct) as count_commission_pct
       ,count(nvl(commission_pct,0)) as count_commission_pct
       ,count(*)as count_all
from employees;


select  count(distinct job_id) as job_id_1
       ,count(job_id) as job_id_2
       ,sum(salary) as salary_1  --sunt sumate valorile unice
       ,sum(distinct salary) as salary_2  --din suma a scos valorile dublate
from employees;


select distinct count(distinct job_id) as job_id_1
       ,count(job_id) as job_id_2
       ,sum(salary) as salary_1  --sunt sumate valorile unice
       ,sum(distinct salary) as salary_2  --din suma a scos valorile dublate
from employees;


select  count(distinct job_id) as job_id_1
       ,count(job_id) as job_id_2
       ,sum(salary) as salary_1  --sunt sumate valorile unice
       ,sum(distinct salary) as salary_2  --din suma a scos valorile dublate
       ,min(hire_date) as min_hire_date
       ,max(hire_date) as max_hire_date
from employees
where job_id='SA_REP';


select department_id  as department_id 
       , Round(avg(salary),2)
from employees
group by  department_id;

select nvl(department_id,10) as department_id 
       , Round(avg(salary),2)
from employees
group by nvl(department_id,10);

select avg(salary)
from employees
group by  department_id;


select department_id
       ,job_id
       ,manager_id
       ,avg(salary)
       ,min(hire_date)
       ,max(hire_date)
       ,max(salary)
from employees
where department_id between 50 and 100
group by department_id, manager_id, job_id
order by 1;  --sortarea merge dupa prima coloana din tabel 



select department_id
       ,job_id
       ,manager_id
       ,avg(salary)
       ,min(hire_date)
       ,max(hire_date)
       ,max(salary)
from employees
where department_id between 50 and 100
and salary >=10000
group by department_id, manager_id, job_id
having max(salary) >=10000 --salariu maxim sa fie m mult de 10000
order by 1;  --sortarea merge dupa prima coloana din tabel 
