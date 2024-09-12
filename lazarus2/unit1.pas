unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
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
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
  var
  x1, y1, x2, y2, a, p, s: Double;
begin
  // Считываем координаты вершин A и C из Edit1 и Edit2
  x1 := StrToFloat(Edit1.Text);
  y1 := StrToFloat(Edit2.Text);
  x2 := StrToFloat(Edit3.Text);
  y2 := StrToFloat(Edit4.Text);

  // Находим длину стороны квадрата
  a := Abs(x2 - x1);

  // Находим периметр квадрата
  p := 4 * a;

  // Находим площадь квадрата
  s := a * a;

  // Отображаем результаты вычислений
  Label6.Caption := 'Периметр P = ' + FloatToStr(p);
  Label7.Caption := 'Площадь S = ' + FloatToStr(s);
end;

end.

