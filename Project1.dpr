program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

  var
    Name, SecondName, WorkName :string;
//  x:integer;

begin
  try
    FWork.GetName;
//    Writeln('Имя, Фамилию, Проф');
//    Readln(Name,SecondName,WorkName);
//    Writeln('Введите возраст');
//    Readln(x);
    Writeln;
    readln;
    
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
