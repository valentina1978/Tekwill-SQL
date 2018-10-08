select hire_date --cand vrem sa schimbam formatul datei, lunei, anul
       ,to_char(hire_date,'DD-MM-YYYY') AS to_char
       ,to_char(hire_date,'Day-Month-YYYY') AS to_char_1
       ,to_char(hire_date,'Day-Month-YYYY HH24:MI:SS AM') AS to_char_2

from employees
where hire_date='03-JAN-14';


select to_number('590,423.4568','999,999.9999')
from employees
where employee_id between 100 and 144;

select*
from employees
where hire_date = to_date('17-06-2011','DD.MM.YYYY'); 


select months_between (sysdate,to_date ('17-06-2011', 'DD-MM-YY')) as string_with_date
       ,sysdate
       ,to_date ('17-06-2011', 'DD-MM-YY')
       from employees;
       --where hire_date = '17-06-2011';
       
 select salary
        ,commission_pct
        ,nvl(commission_pct,0)as subst_commission
        ,salary*commission_pct as full_salary
        ,salary*nvl(commission_pct,1) as full_salary_2
        from employees;
        
 select*
 from employees
 where commission_pct<=0.2;
 
  select*
 from employees
 where nvl (commission_pct,0)<=0.2;
 
 select commission_pct
        ,nvl2(commission_pct,1,0)
        ,commission_pct
        ,manager_id
        ,department_id
        ,employee_id
        ,coalesce(commission_pct, manager_id,department_id, employee_id) as return_first_notnullval
        from employees
where nvl2(commission_pct,1,0)=0;


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
from employees;


