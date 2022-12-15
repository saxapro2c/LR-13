var
   filetext: text;
   a:string;
begin
write('Введите строку: ');
readln(a);
assign(filetext,'C:\PABCWork.NET\text3.txt');
append(filetext);
write(filetext,a);
close(filetext);
end.