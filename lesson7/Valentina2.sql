select sysdate --data de la server din ziua actuala
       ,current_date --data de la sesiune
       ,sessiontimezone
from dual;

select sysdate --data de la server
       ,current_date --data de la sesiune
       ,sessiontimezone
       ,current_timestamp
from dual;

--cat timp in urma s-a angajat - ex- 381 saptamaini (1 pozitie)
select sysdate
      ,hire_date
      ,(sysdate-hire_date)/7
      , round((sysdate-hire_date)/7)
from employees;


select* 
from Ad_Exam_details;

--vrem sa stim ce examen a fost
select (sysdate - start_date)/7 weeks 
       ,(sysdate - start_date)as days 
from Ad_Exam_details
where exam_id=550;

--cati angajati sunt angajati mai mult de 5 ani de zile
select first_name ||' '||last_name
      , sysdate
      ,hire_date
      ,Round ((sysdate-hire_date)/7) as how_old_was_hired
      ,Round ((sysdate-hire_date)/365) years
      from employees
      where Round ((sysdate-hire_date)/365)>5;
  
   --perioada dintre ziua azi si data cand persoana s-a angajat   
   select first_name ||' '||last_name
      , sysdate
      ,hire_date
      ,Round ((sysdate-hire_date)/7) as how_old_was_hired
      ,Round ((sysdate-hire_date)/365.25)*12 as number_of_month_1
      ,Round ((sysdate-hire_date)/365)*12 as nr_of_month_1_a
      ,Round((sysdate-hire_date)/365) years
      ,months_between (sysdate, hire_date) nr_of_month_2
      from employees
      where Round ((sysdate-hire_date)/365)>5;   
      
      
         select first_name ||' '||last_name
      , sysdate
      ,hire_date
      ,Round ((sysdate-hire_date)/7) as how_old_was_hired
      ,Round ((sysdate-hire_date)/365.25)*12 as number_of_month_1
      ,Round ((sysdate-hire_date)/365)*12 as nr_of_month_1_a
      ,Round((sysdate-hire_date)/365) years
      ,months_between (sysdate, hire_date) nr_of_month_2
      ,add_months (sysdate, 2) add_month
      ,next_day(sysdate, 'friday')next_friday--data cand va fi urmatoarea vineri
      ,next_day(sysdate,4)next_wednesday
      ,last_day (sysdate)next_friday
      ,last_day (hire_date) last_day_hire_date
      ,last_day ('12-JUL-1') last_day_hire_date_1 --modify data type - face din data cifra
      from employees;
    
SELECT Round (hire_date, 'year') as round_year
       ,round (sysdate, 'Year')
from employees;
      
 SELECT hire_date
        ,Round(hire_date, 'year') as round_year
        ,Round(hire_date, 'month') as round_month
        ,sysdate
        ,round (sysdate, 'Year') as round_year_1
        ,round (sysdate, 'month') as round_month
        ,trunc (sysdate, 'month') as truncate_month
        ,trunc (sysdate, 'year') as truncate_year
from employees;

