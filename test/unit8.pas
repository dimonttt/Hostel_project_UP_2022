unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, SQLDB, odbcconn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBGrids;

type

  { TForm8 }

  TForm8 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form8: TForm8;

implementation
 Uses Unit6;
{$R *.lfm}

{ TForm8 }


procedure TForm8.Button1Click(Sender: TObject);
begin
  Form6.show;
  Form8.Hide;
end;

end.

