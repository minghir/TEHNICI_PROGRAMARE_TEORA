program Dame;
type stiva=array[1..100] of integer;
var st:stiva;
    n,k:integer;
    asu,ev:boolean;

procedure init(k:integer; var st:stiva);
begin
    st[k]:=0;
end;

procedure succesor(var asu:boolean; var st:stiva;k:integer);
begin
     if st[k]<n
        then
            begin
                st[k]:=st[k]+1;
                asu:=true;
            end
        else
            begin
                asu:=false;
            end;
end;

procedure valid(var ev:boolean;st:stiva;k:integer);
var i:integer;
begin
    ev:=true;
    for i:=1 to k-1 do
        if (st[k]=st[i]) or (abs(st[k]-st[i])=abs(k-i))
        then
            begin
                ev:=false;
            end;
end;

function solutie(k:integer):boolean;
begin
    solutie:=(k=n);
end;

procedure tipar;
var i:integer;
begin
    for i:=1 to n do
    write(st[i]);
    writeln;
end;

begin
  writeln ('n=');
  readln(n);
  k:=1;
  init(k,st);
  while k > 0 do
  begin
    repeat
        succesor(asu,st,k);
        if asu
            then
            begin
                valid(ev,st,k);
            end;
    until (not asu) or (asu and ev);
    if asu
        then
            if solutie(k)
            then
                begin
                    tipar
                end
            else
                begin
                    k:=k+1;
                    init(k,st);
                end
        else
            begin
                k:=k-1;
            end;
  end
end.

