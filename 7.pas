var
  F_in, F_out: Text;
  S: string;

begin
  assign(F_in, 'C:\PABCWork.NET\text6.txt');
  Reset(F_in);
  assign(F_out, 'C:\PABCWork.NET\text6#.txt');
  Rewrite(F_out);
  While not eof(F_in) do
  begin
    readln(F_in,S);
    if S<>'' then writeln(F_out,S);
  end;
  close(F_in);
  close(F_out);
end.