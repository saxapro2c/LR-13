var
  F_in, F_out: Text;
  max, min, K, c, i: integer;

begin
  assign(F_in, 'C:\PABCWork.NET\text5input.txt');
  Rewrite(F_in);
  assign(F_out, 'C:\PABCWork.NET\text5output.txt');
  Rewrite(F_out);
  writeln('Введите колличество чисел, не более 100');
  readln(K);  
  max := 0;
  min := 999;
  for i := 1 to K do
  begin
    c := random(0, 999);
    writeln(F_in, c);
    if c > max then
      max := c;
    if c < min then
      min := c;
  end;
  writeln(F_out, 'max = ', max);
  writeln(F_out, 'min = ', min);
  close(F_in);
  close(F_out);
end.