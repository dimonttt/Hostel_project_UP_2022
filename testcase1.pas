unit TestCase1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, Unit1, Unit2, Unit3, Unit5, Unit6, Unit7, Unit8;

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
  Form7.SQLQuery1.Close;  // выключаем компонент
  Form7.SQLQuery1.SQL.Text := 'insert into room(Code,NameRoom,Col,Price) VALUES (:p,:u,:q,:h)';  // добавляем sql запрос для добавления данных

  Form7.SQLQuery1.ParamByName('p').AsString := '1';// присваиваем записи текстовое значение
  Form7.SQLQuery1.ParamByName('u').AsString := 'Xtnsht[vtcnyfz';
  Form7.SQLQuery1.ParamByName('q').AsString := '4';
  Form7.SQLQuery1.ParamByName('h').AsString := '2000';

  Form7.SQLQuery1.execSQL; // выполняем запрос
  Form7.SQLTransaction1.Commit; //подтверждаем изменения в базе
end;

procedure TTestCase1.AddClient;
begin
  Form2.SQLQuery1.Close;  // выключаем компонент
  Form2.SQLQuery1.SQL.Text := 'insert into client (Surname,Name,MiddleName,PhoneNumber,Email) values(:p,:u,:r,:t,:z);';  // добавляем sql запрос для добавления данных
  Form2.SQLQuery1.ParamByName('p').AsString := 'Фамилия';// присваиваем записи текстовое значение
  Form2.SQLQuery1.ParamByName('u').AsString := 'Имя';
  Form2.SQLQuery1.ParamByName('r').AsString := 'Отчество';
  Form2.SQLQuery1.ParamByName('t').AsString := '89124562134';
  Form2.SQLQuery1.ParamByName('z').AsString := 'el_pochta@mail.com';

  Form2.SQLQuery1.ExecSQL; // выполняем запрос
  Form2.SQLTransaction1.Commit; //подтверждаем изменения в базе
end;

procedure TTestCase1.DeleteRoom;
begin
  Form7.SQLQuery1.Delete;
end;

procedure TTestCase1.EditRoom;
begin
  Form7.SQLQuery1.Close;  //выключаем компонент
  Form7.SQLQuery1.SQL.Text := 'update room set Code:=cd, NameRoom:=nr, Col:=cl, Price:=pr, where id:=id';
  //добавляем sql запрос для добавления данных

  Form7.SQLQuery1.ParamByName('p').AsString := '1';// присваиваем записи текстовое значение
  Form7.SQLQuery1.ParamByName('u').AsString := 'Xtnsht[vtcnyfz';
  Form7.SQLQuery1.ParamByName('q').AsString := '4';
  Form7.SQLQuery1.ParamByName('h').AsString := '2000';
  Form7.SQLQuery1.ParamByName('id').AsString :='600';
  Form7.SQLQuery1.execSQL; // выполняем запрос
  Form7.SQLTransaction1.Commit; //подтверждаем изменения в базе

end;

procedure TTestCase1.ViewStatistics;
begin
  Form8.Show;
  Form6.Hide;
end;

procedure TTestCase1.SearchClient;
 var s1 :string;
begin
 if edit1.Text<>'' then s1:='and(Surname="'+edit1.text+'")';

 Form6.SQLQuery1.Close;// закрываем датасет
 Form6.SQLQuery1.SQL.Text := 'select * from client where Surname = :s1'; // добавляем наш запрос
 Form6.SQLQuery1.ParamByName('s1').AsString:=edit1.text;// присваиваем требуемый параметр

 Form6.SQLQuery1.Open;// открываем запрос
end;

procedure TTestCase1.LoginVerificationClient;
 var c,k: string;
begin
 c:='admin';
 k:='1234';
 Form5.Edit1.Text=c;
 Form5.Edit2.Text=k;

 Form6.Show;
 Form5.Hide;
end;


procedure TTestCase1.LoginVerificationRoom;
 var c,k: string;
begin
 c:='admin';
 k:='1234';
 Form5.Edit1.Text=c;
 Form5.Edit2.Text=k;

 Form7.Show;
 Form5.Hide;
end;

procedure TTestCase1.OutputInformation;
begin
  Form3.Label7.Caption := Form1.MaskEdit1.Text;
  Form3.Label8.Caption := Form1.MaskEdit2.Text;
  Form3.Label9.Caption := Form1.Edit1.Text;
end;

procedure TTestCase1.Booking;
begin
  // проверить заполнены ли все поля
  if (edit1.Text<>'') then
begin
     Form3.SQLQuery1.Close;  // выключаем компонент
     Form3.SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client,StartDate,EndDate,People) VALUES (:p,:u,:r,:o,:t)';  // добавляем sql запрос для добавления данных

     Form3.SQLQuery1.ParamByName('p').AsString := '1';// присваиваем записи текстовое значение
     Form3.SQLQuery1.ParamByName('u').AsString := Edit1.Text;
     Form3.SQLQuery1.ParamByName('r').AsString := Label7.Caption;
     Form3.SQLQuery1.ParamByName('o').AsString := Label8.Caption;
     Form3.SQLQuery1.ParamByName('t').AsString := Label9.Caption;
     Form3.SQLQuery1.ExecSQL; // выполняем запрос

     Form3.SQLTransaction1.Commit; //подтверждаем изменения в базе
Form4.Show;
Form3.Hide;
end
else
showmessage('Заполните поле "Фамилия"');
end;


procedure TTestCase1.Transition;
begin
 Form1.Show;
 Form4.Hide;
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
