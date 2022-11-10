unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, odbcconn, DB, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, DBGrids;

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
    DBGrid1: TDBGrid;
    Edit1: TEdit;
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
  Uses Unit1, Unit4;
{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form3.Hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form4.Show;
  Form3.Hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Label7.Caption := Form1.MaskEdit1.Text;
  Label8.Caption := Form1.MaskEdit2.Text;
  Label9.Caption := Form1.Edit1.Text;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  // проверить заполнены ли все поля
if (edit1.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client,StartDate,EndDate,People) VALUES (:p,:u,:r,:o,:t)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := '1';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
SQLQuery1.ParamByName('r').AsString := Label7.Caption;
SQLQuery1.ParamByName('o').AsString := Label8.Caption;
SQLQuery1.ParamByName('t').AsString := Label9.Caption;
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
if (edit1.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client) VALUES (:p,:u)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := '2';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
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
if (edit1.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client) VALUES (:p,:u)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := '3';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
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
if (edit1.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into DistributionOfRooms(Room,Client) VALUES (:p,:u)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := '4';// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit1.Text;
SQLQuery1.ExecSQL;
//SQLQuery1.execSQL; // выполняем запрос
SQLTransaction1.Commit; //подтверждаем изменения в базе
Form4.Show;
Form3.Hide;
end
else
showmessage('Заполните поле "Фамилия"');
end;

procedure TForm3.Label2Click(Sender: TObject);
begin

end;

end.

