unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, odbcconn, DB, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBGrids;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private

  public

  end;

var
  Form6: TForm6;

implementation
  Uses Unit5, Unit8;
{$R *.lfm}

  { TForm6 }

  procedure TForm6.Button1Click(Sender: TObject);
  begin
    Form5.Show;
    Form6.Hide;
  end;

procedure TForm6.Button2Click(Sender: TObject);
var s1 :string;
begin
if edit1.Text<>'' then s1:='and(Surname="'+edit1.text+'")';

SQLQuery1.Close;// закрываем датасет
SQLQuery1.SQL.Text := 'select * from client where Surname = :s1'; // добавляем наш запрос
SQLQuery1.ParamByName('s1').AsString:=edit1.text;// присваиваем требуемый параметр

SQLQuery1.Open;// открываем запрос
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  Form8.Show;
  Form6.Hide;
end;

procedure TForm6.DBGrid1TitleClick(Column: TColumn);
begin
     SQLQuery1.Close;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('SELECT * FROM client ORDER BY 1 ASC');
     SQLQuery1.Open;
end;

end.

