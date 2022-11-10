unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm5 }

  TForm5 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation
  Uses Unit1, Unit6, Unit7;
{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form7.Hide;
end;

procedure TForm5.Button2Click(Sender: TObject);
var c,k: string;

begin
  c:='admin';
  k:='1234';


  if (Edit1.Text=c) and (Edit2.Text=k) then
     begin
       Label5.Caption:='Данные введены верно';
       Form7.Show;
       Form5.Hide;
     end
  else Label5.Caption:='Введен неверный логин или пароль!';

end;

procedure TForm5.BitBtn1Click(Sender: TObject);
var c,k: string;

begin
  c:='admin';
  k:='1234';


  if (Edit1.Text=c) and (Edit2.Text=k) then
     begin
       Label5.Caption:='Данные введены верно';
       Form6.Show;
       Form5.Hide;
     end
  else Label5.Caption:='Введен неверный логин или пароль!';

end;

end.

