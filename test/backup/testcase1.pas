unit TestCase1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, Unit1, Unit2, Unit3, Unit5, Unit6, Unit7;

type

  TTestCase1= class(TTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published

    procedure AddClient;
    procedure AddRoom;
    procedure DeleteRoom;
    procedure EditRoom;
    procedure ViewStatistics;
    procedure SearchClient;
    procedure LoginVerificationClient;
    procedure LoginVerificationRoom;
    procedure OutputInformation;
    procedure Booking;
    procedure Transition;
  end;

implementation

procedure TTestCase1.AddRoom;
begin
  //Form7.SQLQuery1.Close;  // выключаем компонент
  //Form7.SQLQuery1.SQL.Text := 'insert into room(Code,NameRoom,Col,Price) VALUES (:p,:u,:q,:h)';  // добавляем sql запрос для добавления данных
  //
  //Form7.SQLQuery1.ParamByName('p').AsString := '1';// присваиваем записи текстовое значение
  //Form7.SQLQuery1.ParamByName('u').AsString := 'Xtnsht[vtcnyfz';
  //Form7.SQLQuery1.ParamByName('q').AsString := '4';
  //Form7.SQLQuery1.ParamByName('h').AsString := '2000';
  //
  //Form7.SQLQuery1.execSQL; // выполняем запрос
  //Form7.SQLTransaction1.Commit; //подтверждаем изменения в базе
end;

procedure TTestCase1.AddClient;
begin

  //Form2.SQLQuery1.Close;  // выключаем компонент
  //Form2.SQLQuery1.SQL.Text := 'insert into client (Surname,Name,MiddleName,PhoneNumber,Email) values(:p,:u,:r,:t,:z);';  // добавляем sql запрос для добавления данных
  //Form2.SQLQuery1.ParamByName('p').AsString := 'Фамилия';// присваиваем записи текстовое значение
  //Form2.SQLQuery1.ParamByName('u').AsString := 'Имя';
  //Form2.SQLQuery1.ParamByName('r').AsString := 'Отчество';
  //Form2.SQLQuery1.ParamByName('t').AsString := '89124562134';
  //Form2.SQLQuery1.ParamByName('z').AsString := 'el_pochta@mail.com';
  //
  //Form2.SQLQuery1.ExecSQL; // выполняем запрос
  //Form2.SQLTransaction1.Commit; //подтверждаем изменения в базе
end;

procedure TTestCase1.DeleteRoom;
begin

end;

procedure TTestCase1.EditRoom;
begin

end;

procedure TTestCase1.ViewStatistics;
begin

end;

procedure TTestCase1.SearchClient;
begin

end;

procedure TTestCase1.LoginVerificationClient;
begin

end;

procedure TTestCase1.LoginVerificationRoom;
begin

end;

procedure TTestCase1.OutputInformation;
begin

end;

procedure TTestCase1.Booking;
begin

end;

procedure TTestCase1.Transition;
begin

end;

procedure TTestCase1.SetUp;
begin

end;

procedure TTestCase1.TearDown;
begin

end;

initialization

  RegisterTest(TTestCase1);
end.

