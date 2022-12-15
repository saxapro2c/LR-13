var
   filetext: text;
   a:string;
   i,n,k,j:integer;
begin
assign(filetext,'C:\PABCWork.NET\text2.txt');
rewrite(filetext);
writeln('Введите количество строк и количество сиволов в строке:');
read(n,k);
for i:=1 to n do
  begin
  for j:=1 to k do
    begin
    write(filetext,'*');
    end;
    writeln(filetext);
    end;
    close(filetext);
    end.