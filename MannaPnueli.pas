{

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

}
program MannaPnueli;
type stiva=array[1..100] of integer;
var st:stiva;
n,k:integer;

begin
    writeln('n=');
    readln(n);
    k:=1;
    st[1]:=n;
    while k>0 do
        if st[k] < 12
        then
        begin
            k:=k+1;
            st[k]:=st[k-1]+2;
        end
        else
        begin
            k:=k-1;
            if k>0
                then
                st[k]:=st[k+1]-1;
        end;
        writeln('f=',st[1]-1);
end.
