program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

  var
  Employee : TWork;
  color:TColorsEye;
  str:string;

begin
  try
  Employee := Twork.Create(12, Red,'aaa','ddd','sss');

  Writeln('Имя: ' + Employee.GetName);
  Writeln('Фамилия: ' + Employee.GetSecondName);
  Writeln('Возраст: ' + Inttostr(Employee.GetOld));
  Writeln('Проф: ' + Employee.GetWorkName);

  Writeln('Цвет глаз: ' , ord(color));   // Вывод порядкового номера

  Writeln('Замените данные');
    readln(str);
  Employee.SetName(str);
    readln(str);
  Employee.SetSecondName(str);
    readln(str);
  Employee.SetOld(StrtoInt(str));
    readln(str);
  Employee.SetWorkName(str);
    readln(str);
  Employee.SetColorEye(color);

  Writeln('Имя: ' + Employee.GetName);
  Writeln('Фамилия: ' + Employee.GetSecondName);
  Writeln('Возраст: ' + Inttostr(Employee.GetOld));
  Writeln('Проф: ' + Employee.GetWorkName);
  Writeln('Цвет глаз: ', ord(color));
  //Writeln('Eye: '+ Employee.GetColorEye);
  Readln;
  //sleep(5000);

  except
    on E: Exception do
      Writeln(E.ClassName, 'Erro!', E.Message);
  end;
end.
