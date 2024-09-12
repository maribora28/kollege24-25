unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses Unit1,Unit4;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  unit1.Form1.Show;
  unit3.Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  unit4.Form3.Show;
  unit3.Form2.Hide;
end;

procedure TForm2.Label1Click(Sender: TObject);
begin

end;

end.

