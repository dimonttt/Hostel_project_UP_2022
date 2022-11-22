unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, SQLDB, odbcconn, Forms, Controls, Graphics, Dialogs,
  StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
   Uses Unit1;
{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
    Form1.Show;
    Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  begin
  if (edit1.Text<>'') and (edit2.Text<>'') and (edit3.Text<>'') and (edit4.Text<>'') and (edit5.Text<>'') then

begin
  SQLQuery1.Close;  // выключаем компонент
  SQLQuery1.SQL.Text := 'insert into client (Surname,Name,MiddleName,PhoneNumber,Email) values(:p,:u,:r,:t,:z);';  // добавляем sql запрос для добавления данных
  SQLQuery1.ParamByName('p').AsString := edit1.Text;// присваиваем записи текстовое значение
  SQLQuery1.ParamByName('u').AsString := edit2.Text;
  SQLQuery1.ParamByName('r').AsString := edit3.Text;
  SQLQuery1.ParamByName('t').AsString := edit4.Text;
  SQLQuery1.ParamByName('z').AsString := edit5.Text;

  SQLQuery1.ExecSQL; // выполняем запрос
  SQLTransaction1.Commit; //подтверждаем изменения в базе
  Form1.Show;
  Form2.Hide;
end

else
showmessage('Заполнены не все поля! Запись не может быть добавлена в базу данных!');
end;
end;

end.

