--3.5->write a procedure to accept a employee name and display his dependent names, relationship and project names, controlling department.
create or replace procedure cs5(ename in employee.fname%type) as
essn employee.ssn%type;
begin
select ssn into essn from employee where fname=ename;
dbms_output.put_line('Names of dependents and relationship');
for cur1 in (select * from dependent where employeessn=essn)
loop
dbms_output.put_line(cur1.name||' is '||cur1.relationship);
end loop;
dbms_output.put_line('Project names and controlling departments');
for cur1 in (select * from project where project_no in(select project_no from works_on where ssn=essn))
loop
dbms_output.put_line(cur1.name||' controlled by '||cur1.controlling_department);
end loop;
end;


/*
SQL> exec cs5('NEELAM');
Names of dependents and relationship
ROHIT is BROTHER
RAMESH is BROTHER
Project names and controlling departments
BHCV controlled by RD05
SUBASH controlled by RD03

PL/SQL procedure successfully completed.
*/
/
