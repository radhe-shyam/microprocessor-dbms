--3.7->write a function to return the department name which is Controlling highest number of projects.
create or replace function cs7 return department.name%type is
dname department.name%type;
begin
select name into dname from department where dept_no=(select controlling_department from project where rownum<5 group by controlling_department having count(*)=(select max(count(*)) from project group by controlling_department));
return dname;
end;



/*
SQL> select cs7 from dual;

CS7
--------------------------------------------------------------------------------

DEVELOPMENT
*/

/