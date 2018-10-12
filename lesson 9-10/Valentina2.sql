--Afisati luna si anul in formatul "MM.YYYY" si care a fost salariul maxim acordat in luna respectiva 
--doar pentru persoanele la care numarul de telefon incepe cu 650. Ordonati datele descendent dupa salariu.

Select to_char(hire_date,'MM.YYYY') as month
       ,max(salary) as max_salary
       from employees
       where phone_number like '650%'
       group by to_char(hire_date,'MM.YYYY')
       order by 2 desc;
       
-- 2)Afisati job_id si numarul de angajati in aceste functii / joburi.
--Afisati job_id cu prima litera mare si restul mici.

Select  job_id
       ,count(*)
       from employees
       group by  job_id;
       
Select  substr (initcap(job_id), 1,2)||lower (substr (initcap(job_id),3)) as lower_jobID 
       ,count(*)
from employees
group by  job_id;

--3-a) Afisati luna : "MM.YYYY" si cate persoane au fost angajate in luna respectiva, ordonati rezultatul dupa luna descendenta.


select to_char(hire_date,'MM.YYYY')
       ,count (*)                 --cate persoane au fost angajate
       from employees
      group by to_char(hire_date,'MM.YYYY');
    
    
       select to_char(hire_date,'MM.YYYY')
       ,count (*) 
       from employees
       --where to_char(hire_date,'MM.YYYY')='02.2015' 
      group by to_char(hire_date,'MM.YYYY');
      
--3-b) Afisati doar lunile in care au fost angajate mai mult de o persoana.

       select to_char(hire_date,'MM.YYYY') as to_char
              ,count (*) 
       from employees
      group by to_char(hire_date,'MM.YYYY')
      having count (*)>1;
      
 --4) Afisati care sunt managerii care au in subdiviziune mai multe de o persoana
 
 select first_name
        ,last_name
        ,department_id
 from employees
 where department_id >1;
 
 select*
 from employees;