begin
for cursor1 in(select * from department where dept_no between 1234 and 1900)
loop
dbms_output.put_line('Department No : ' || cursor1.dept_no);
dbms_output.put_line('Department Name : ' || cursor1.name);
dbms_output.put_line('Department Manager SSN : ' || cursor1.managerssn);
dbms_output.put_line('Department Managere DOB : ' || cursor1.manager_dob);
dbms_output.put_line('Department location : ' || cursor1.location);
end loop;
end;
/