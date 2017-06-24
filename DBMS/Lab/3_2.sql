declare
a number(3);
b number(3);
c number(3);
g number(3);
begin
a:=&a;
b:=&b;
c:=&c;
if a>b then
	if a>c then
		g:=a;
	else
		g:=c;
	end if;
elsif b>c then
	g:=b;
else
	g:=c;
end if;
dbms_output.put_line(g);
end;
/