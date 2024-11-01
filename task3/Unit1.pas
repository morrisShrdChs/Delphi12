unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPowerOfThreeChecker = class
  private
    FNumber: Integer;
  public
    constructor Create(ANumber: Integer);
    function IsPowerOfThree: Integer;
  end;

  TForm1 = class(TForm)
    EditK: TEdit;
    ButtonCheck: TButton;
    LabelResult: TLabel;
    procedure ButtonCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

constructor TPowerOfThreeChecker.Create(ANumber: Integer);
begin
  FNumber := ANumber;
end;

function TPowerOfThreeChecker.IsPowerOfThree: Integer;
var
  num: Integer;
begin
  num := FNumber;

  if num < 1 then
    Exit(0);

  while (num mod 3 = 0) do
    num := num div 3;


  if num = 1 then
    Result := 1
  else
    Result := 0;
end;


procedure TForm1.ButtonCheckClick(Sender: TObject);
var
  k: Integer;
  checker: TPowerOfThreeChecker;
  resultValue: Integer;
begin

  if not TryStrToInt(EditK.Text, k) then
  begin
    LabelResult.Caption := 'Ошибка: введите корректное число';
    Exit;
  end;


  checker := TPowerOfThreeChecker.Create(k);


  resultValue := checker.IsPowerOfThree;
  LabelResult.Caption := 't = ' + IntToStr(resultValue);


  checker.Free;
end;

end.

