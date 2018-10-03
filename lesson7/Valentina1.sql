select first_name as Name
       ,email_addr as Email
       , parent_id
       From AD_Student_Details
       Where parent_id>=620
       and parent_id<=630
       and email_addr is not null
       order by 1,2 desc;
       
 select department_id
        ,department_name
        ,manager_id
        ,location_id
from DEPARTMENTS
where manager_id is not null
and location_id >= 1500;

Create table String_Addreses as
Select 'MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28' as address from dual
Union
Select '2010,or.Chisinau, str. Grigore Vieru 50, ap.3' as address from dual
Union
Select 'MD2015,or.Chisinau, str. Ion Creanga 4, ap.17'  as address from dual
Union
Select 'md-2030,Chisinau, st. Muncesti 8, ap.54'  as address from dual
Union
Select 'MD-2004,Chisineov, str-da. Bucuriei 2, ap.23'  as address from dual
Union
Select 'Md-2045,or Chisin., s. Ion Inculet 8, ap.50'  as address from dual
Union
Select 'Md2013,chisinau, str. Vasile Lupu 40, ap.20'  as address from dual
Union
Select 'MD2031,or.CHISINAU,'  as address from dual
Union
Select 'md2017,or.CH, str. , ap.28'  as address from dual;

select *
from String_Addreses;

--Afisati doar ZIP Code folosind tabela "String Addreses".
--Afisati toate valorile cu 'MD-' in fata

SELECT instr (address,',', 1,1)
from string_addreses;

Select address
     ,instr(address,',',1,1) as t1
     ,substr(address,1,instr(address,',',1,1)-1) as t2
     ,substr(substr(address,1,instr(address,',',1,1)-1),-4,4)as t3
     ,'MD-'||substr(substr(address,1,instr(address,',',1,1)-1),-4,4) as adress
From String_Addreses;

Select Substr(address,1,instr(address,',',1,1)-1) as t1
     ,'MD-'||substr(Substr(address,1,instr(address,',',1,1)-1),-4) zip_code
From String_Addreses;

select salary
      ,lpad(salary,6,'$')
      ,rpad (salary,6,'e')
      ,concat(first_name,' ')
      ,concat (concat(first_name,' '), last_name) as full_name
      ,Lower(concat(concat(first_name,' '), last_name)) as full_name1
      ,Upper(concat(concat(first_name,' '), last_name)) as full_name2
      ,Initcap(concat(concat(first_name,' '), last_name)) as full_name3
from employees;

select Round (100.455321,2) as round_1
      ,Round (100.455321,0)as round_2
      ,Round (100.455321)as round_3
      ,Round (100.555321)as round_3_a
      ,Round (100.455321,-1)as round_4
      ,Round (150.555321,-2)as round_4_1
from dual;


select Trunc (100.455321,2) as round_1
      ,Trunc (100.455321,0)as round_2
      ,Trunc (100.455321)as round_3
      ,Trunc(100.555321)as round_3_a
      ,Trunc (100.455321,-1)as round_4
      ,Trunc(150.555321,-2)as round_4_1
from dual;
  
select Ceil (100.455321) as round_1  
       ,ceil (100.000001) as round_2
       ,ceil (105.000001) as round_3
from dual;   

select floor (100.455321) as round_1  
       ,floor(100.000001) as round_2
       ,floor(105.999999) as round_3
from dual;  

select mod(10,5)mod_1
       ,mod(10,2)mod_2
       ,mod(100,3)mod_3
       ,mod(10,3)mod_4
       from dual
       where mod(10,3) <>0;
       
desc employees;       
      