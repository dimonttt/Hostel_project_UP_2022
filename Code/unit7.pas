unit Unit7;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, odbcconn, DB, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBGrids;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form7: TForm7;

implementation
   Uses Unit5;
{$R *.lfm}

{ TForm7 }

procedure TForm7.Button3Click(Sender: TObject);
begin
  Form5.Show;
  Form7.Hide;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
   SQLQuery1.Close;  // выключаем компонент
   SQLQuery1.SQL.Text := 'update room set Code:=cd, NameRoom:=nr, Col:=cl, Price:=pr, where id:=id';
  // добавляем sql запрос для добавления данных

  SQLQuery1.ParamByName('cd').AsString :=Edit1.Text;// присваиваем записи текстовое значение
  SQLQuery1.ParamByName('nr').AsString :=Edit2.Text;
  SQLQuery1.ParamByName('cl').AsString :=Edit3.Text;
  SQLQuery1.ParamByName('pr').AsString :=Edit4.Text;
  SQLQuery1.ParamByName('id').AsString :='600';


  SQLQuery1.execSQL; // выполняем запрос
  SQLTransaction1.Commit; //подтверждаем изменения в базе
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  // проверить заполнены ли все поля
if (edit1.Text<>'') and (edit2.Text<>'') and (edit3.Text<>'') and (edit4.Text<>'') then
begin
SQLQuery1.Close;  // выключаем компонент
SQLQuery1.SQL.Text := 'insert into room(Code,NameRoom,Col,Price) VALUES (:p,:u,:q,:h)';  // добавляем sql запрос для добавления данных

SQLQuery1.ParamByName('p').AsString := Edit1.Text;// присваиваем записи текстовое значение
SQLQuery1.ParamByName('u').AsString := Edit2.Text;
SQLQuery1.ParamByName('q').AsString := Edit3.Text;
SQLQuery1.ParamByName('h').AsString := Edit4.Text;

SQLQuery1.execSQL; // выполняем запрос
SQLTransaction1.Commit; //подтверждаем изменения в базе

showmessage ('Запись добавлена');
end

else
showmessage('Заполнены не все поля! Запись не может быть добавлена в базу данных!');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  SQLQuery1.Delete; // удаляем запись
end;

end.

