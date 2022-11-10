unit TestCase1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, Unit2;

type

  TTestCase1= class(TTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestHookUp;
    procedure AddClient;
  end;

implementation

procedure TTestCase1.TestHookUp;
begin
  Fail('Напишите ваш тест');
end;

procedure TTestCase1.AddClient;
begin
  Form2.Edit1.Text:=true;
  //Fail('Напишите ваш тест');
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

