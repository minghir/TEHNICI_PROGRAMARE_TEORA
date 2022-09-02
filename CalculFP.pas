{

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

}
program CalculFP;
type stiva=array[1..100] of real;
var st:stiva;
var fp:string[100];
var i,tmp,code,k:integer;
var res:real;
begin
res:=0;
tmp:=0;
code:=0;
k:=0;
st[k]:=0;
//fp:='(2*(3+1))';
fp:='231-*';
for i:=0 to length(fp) do
    case fp[i] of
    '+':
        begin
        res:=st[k]+st[k-1];
        k:=k-1;
        st[k]:=res;
        end;
    '-':
        begin
        res:=st[k]-st[k-1];
        k:=k-1;
        st[k]:=res;
        end;
    '*':
        begin
        res:=st[k]*st[k-1];
        k:=k-1;
        st[k]:=res;
        end;
    '/':
        begin
        res:=st[k]/st[k-1];
        k:=k-1;
        st[k]:=res;
        end;
    else
        k:=k+1;
        val(fp[i],tmp,code);
        st[k]:=tmp;
        //res:=res+tmp;
    begin
    end;
end;
    

  writeln (fp);
  writeln (res);
end.
