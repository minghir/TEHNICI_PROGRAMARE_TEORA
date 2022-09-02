
program FormaPoloneza;
type stiva=array[1..100] of char;
var st:stiva;
fp,ec:string[100];
k,i:integer;

function pr (a :char):integer;
begin
	case a of
	'+','-':pr:=1;
	'*','/':pr:=2;
	'(':	pr:=0;
	end
end;


begin writeln('introduceti expresia:');
readln(ec);
ec:='('+ec+')';
fp:='';
k:=0;
for i:=1 to length(ec) do
	case ec[i] of
	'(':
		begin
			k:=k+1;
			st[k]:=ec[i];
		end;
	')':
		begin
			while st[k] <> '(' do
				begin
					fp:=fp+st[k];
					k:=k-1;
				end;
				k:=k-1;
			end;
	'+','-','*','/':
		if pr(st[k])>=pr(ec[i])
		then
			begin
				while pr(st[k])>=pr(ec[i]) do
					begin
						fp:=fp+st[k];
						k:=k-1;
					end;
					k:=k+1;
					st[k]:=ec[i];
				end
		else
			begin
				k:=k+1;
				st[k]:=ec[i];
			end
	else
		fp:=fp+ec[i];
	end;
	writeln(fp);
end.


