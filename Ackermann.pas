{

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

}
program Ackermann;
type stiva=array[1..100,1..2] of integer;
var st:stiva;
m,n,k:integer;

begin
	writeln('m=');
	readln(m);
    	writeln('n=');
	readln(n);
    	k:=1;
	st[k,1]:=m;
    	st[k,2]:=n;
    while k>0 do
	if (st[k,1] <> 0) and (st[k,2] <> 0)
		then
		begin
			    k:=k+1;
			    st[k,1]:=st[k-1,1];
			    st[k,2]:=st[k-1,2]-1;
		end
		else
			if st[k,2] = 0
			then
			begin
				st[k,1]:=st[k,1]-1;
				st[k,2]:=1
			end
			else
			begin
				k:=k-1;
				if k>0
				then
				begin
					st[k,1]:=st[k,1]-1;
					st[k,2]:=st[k+1,2]+1;
				end
			end;
		writeln('ac(',m,',',n,')=',st[1,2]+1);
end.

