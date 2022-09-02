{

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

}
program FPcalc;
type stiva =array[1..100,1..2]of char;
var st :stiva;
fp:string[100];
i,k,j:integer;
c:string[1];
begin
  writeln ('Forma poloneza este');
  readln(fp);
  k:=0;
  j:=0;
  for i:=0 to length(fp) do
  case fp[i] of
  'a'..'z':
  begin
  k:=k+1;
  st[k,2]:=fp[i];
  st[k,1]:=' ';
  end;
  '+','-','*','/':
  begin
  writeln('x',j,'=',st[k-1,1],st[k-1,2],fp[i],st[k,1],st[k,2]);
  k:=k-1;
  st[k,1]:='x'; str(j:1,c);st[k,2]:=c[1];
  j:=j+1;
  end;
  end;
end.

