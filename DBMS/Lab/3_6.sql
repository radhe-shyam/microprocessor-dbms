--3.6->write a function to give the number of projects for a given department name. 
create or replace function cs6(dname in department.name%type) return number is 
pn number(2);
begin
select count(*) into pn from project where controlling_department=(select dept_no from department where name=dname) group by controlling_department;
return pn;
end;



/*
SQL> SELECT CS6('SALES') FROM DUAL;

CS6('SALES')
------------
           1
*/
/