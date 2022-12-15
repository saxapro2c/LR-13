var
  F_in, F_out: Text;
  S: String;
  K,i:integer;
begin 
  Write('K: ');
  Readln(K);
  Assign(F_in, 'C:\PABCWork.NET\t4.txt');
  Reset(F_in);
  Assign(F_out, 'C:\PABCWork.NET\text4.txt');
  Rewrite(F_out);
  while not eof(F_in) do
  begin
   Readln(F_in,S);
   inc(i);
   if i<>K then 
     Writeln(F_out,S)
   else
     begin
     Writeln(F_out,' ');
     writeln(F_out,S);
     end;
  end;
  Close(F_in);
  Close(F_out);
  Erase(F_in);
  Rename(F_out, 'D:\LR 13\t4.txt');
end.