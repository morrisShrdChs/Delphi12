unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TNumberFinder = class
  private
    a1, a2, a3, a4: Integer;
  public
    constructor Create(n1, n2, n3, n4: Integer);
    function FindDifferentNumber: Integer;
  end;

  TForm1 = class(TForm)
    EditA1: TEdit;
    EditA2: TEdit;
    EditA3: TEdit;
    EditA4: TEdit;
    ButtonFind: TButton;
    LabelResult: TLabel;
    procedure ButtonFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

constructor TNumberFinder.Create(n1, n2, n3, n4: Integer);
begin
  a1 := n1;
  a2 := n2;
  a3 := n3;
  a4 := n4;
end;

function TNumberFinder.FindDifferentNumber: Integer;
begin
  if (a1 <> a2) and (a1 <> a3) and (a1 <> a4) then
    Result := 1
  else if (a2 <> a1) and (a2 <> a3) and (a2 <> a4) then
    Result := 2
  else if (a3 <> a1) and (a3 <> a2) and (a3 <> a4) then
    Result := 3
  else
    Result := 4;
end;

procedure TForm1.ButtonFindClick(Sender: TObject);
var
  n1, n2, n3, n4: Integer;
  finder: TNumberFinder;
  differentNumberIndex: Integer;
begin
  n1 := StrToInt(EditA1.Text);
  n2 := StrToInt(EditA2.Text);
  n3 := StrToInt(EditA3.Text);
  n4 := StrToInt(EditA4.Text);

  finder := TNumberFinder.Create(n1, n2, n3, n4);

  differentNumberIndex := finder.FindDifferentNumber;

  LabelResult.Caption := 'Номер отличного числа: ' + IntToStr(differentNumberIndex);

  finder.Free;
end;

end.

