unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, SQLDB, odbcconn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
  uses Unit1, Unit4;
{$R *.lfm}

{ TForm3 }

procedure TForm3.Button3Click(Sender: TObject);
begin
  Edit2.Text:=Form1.MaskEdit1.Text;
  Edit3.Text:=Form1.MaskEdit2.Text;
  Edit4.Text:=Form1.Edit1.Text;
  //Label7.Caption := Form1.MaskEdit1.Text;
  //Label8.Caption := Form1.MaskEdit2.Text;
  //Label9.Caption := Form1.Edit1.Text;
end;

procedure TForm3.Button4Click(Sender: TObject);
//var cod: integer;
begin
    // проверить заполнены ли все поля
if (Edit1.Text<>'') then
begin
//cod:=1;
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client,StartDate,EndDate,People) VALUES (:p,:u,:r,:o,:t)';  // добавляем sql запрос для добавления данных
//cod:=cod+1;
//SQLQuery1.ParamByName('c').AsString := Edit4.Text;
SQLQuery1.ParamByName('p').AsString := '1';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
SQLQuery1.ParamByName('r').AsString := Edit2.Text;
SQLQuery1.ParamByName('o').AsString := Edit3.Text;
SQLQuery1.ParamByName('t').AsString := Edit4.Text;

SQLQuery1.ExecSQL;
//SQLQuery1.execSQL; // выполняем запрос
SQLTransaction1.Commit; //подтверждаем изменения в базе
Form4.Show;
Form3.Hide;
end
else
showmessage('Заполните поле "Фамилия"');
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
    // проверить заполнены ли все поля
if (Edit1.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client,StartDate,EndDate,People) VALUES (:p,:u,:r,:o,:t)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := '2';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
SQLQuery1.ParamByName('r').AsString := Edit2.Text;
SQLQuery1.ParamByName('o').AsString := Edit3.Text;
SQLQuery1.ParamByName('t').AsString := Edit4.Text;

SQLQuery1.ExecSQL;
//SQLQuery1.execSQL; // выполняем запрос
SQLTransaction1.Commit; //подтверждаем изменения в базе
Form4.Show;
Form3.Hide;
end
else
showmessage('Заполните поле "Фамилия"');
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
    // проверить заполнены ли все поля
if (Edit1.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client,StartDate,EndDate,People) VALUES (:p,:u,:r,:o,:t)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := '3';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
SQLQuery1.ParamByName('r').AsString := Edit2.Text;
SQLQuery1.ParamByName('o').AsString := Edit3.Text;
SQLQuery1.ParamByName('t').AsString := Edit4.Text;

SQLQuery1.ExecSQL;
//SQLQuery1.execSQL; // выполняем запрос
SQLTransaction1.Commit; //подтверждаем изменения в базе
Form4.Show;
Form3.Hide;
end
else
showmessage('Заполните поле "Фамилия"');
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
    // проверить заполнены ли все поля
if (Edit1.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client,StartDate,EndDate,People) VALUES (:p,:u,:r,:o,:t)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := '1';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
SQLQuery1.ParamByName('r').AsString := Edit2.Text;
SQLQuery1.ParamByName('o').AsString := Edit3.Text;
SQLQuery1.ParamByName('t').AsString := Edit4.Text;

SQLQuery1.ExecSQL;
//SQLQuery1.execSQL; // выполняем запрос
SQLTransaction1.Commit; //подтверждаем изменения в базе
Form4.Show;
Form3.Hide;
end
else
showmessage('Заполните поле "Фамилия"');
end;


procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form3.Hide;
end;

end.

