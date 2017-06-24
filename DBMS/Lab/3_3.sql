declare
a project%rowtype;
pn project.project_no%type;
begin
pn:=&pn;
select * into a from project where project_no=pn;
dbms_output.put_line('Project No : ' || a.project_no);
dbms_output.put_line('Project Name : ' || a.name);
dbms_output.put_line('Project Location : ' || a.location);
dbms_output.put_line('Project Controlling Department : ' || a.Controlling_department);
dbms_output.put_line('Project Budget : ' || a.budget);
end;
/