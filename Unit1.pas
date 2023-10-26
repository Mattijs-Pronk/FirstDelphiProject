unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Label2: TLabel;
    Button3: TButton;
    Label3: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    Button19: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    var calcNumber : Double;
    var calcSign : Char;
    var Result: Boolean;
    var Number1, Number2, Sum, resultValue: Integer;
    function Multiply(x, y: Integer): Integer;
    procedure AddNumber(number: Integer);
    function TrackSum(item: Char): String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


//functie die een getal maal een getal doet.
function TForm1.Multiply(x, y: Integer): Integer;
begin
  Result := x * y;
end;


//click event van button1.
procedure TForm1.Button1Click(Sender: TObject);
begin
      //Boolean waarde zetten.
      Result := not Result;
      //label waarde aanpassen naar Result .
      Label1.Caption := BoolToStr(Result, True);
end;

//click event van button2.
procedure TForm1.Button2Click(Sender: TObject);
begin
      //waardes uit de editboxes ophalen.
      Number1 := StrToIntDef(Edit1.Text, 0);
      Number2 := StrToIntDef(Edit2.Text, 0);

      // nummers bij elkaar optellen.
      Sum := Number1 + Number2;

      // uitkomst laten zien in Edit3.
      Edit3.Text := IntToStr(Sum);
end;

//click event van button 3.
procedure TForm1.Button3Click(Sender: TObject);
begin
  //function Mulitply aanroepen en 12*12 mee geven
  resultValue := Multiply(12, 12);
  Label3.Caption := IntToStr(resultValue);
end;










//functie die getallen achter elkaar zet.
procedure TForm1.AddNumber(number: Integer);
begin
  Edit4.Text := Edit4.Text + IntToStr(number);
end;

//functie die de som bijhoudt.
function TForm1.TrackSum(item: Char): String;
begin
if Edit4.Text = '' then
  begin
  calcSign := item
  end

  else
  begin
  if calcNumber = 0 then
    begin
    calcNumber := StrToInt(Edit4.Text);
    end
    else
    begin
      case item of
      '+':
        begin
        calcNumber := calcNumber + StrToInt(Edit4.Text);
        end;
      '-':
        begin
        calcNumber := calcNumber - StrToInt(Edit4.Text);
        end;
        '*':
        begin
        calcNumber := calcNumber * StrToInt(Edit4.Text);
        end;
      '/':
        begin
        calcNumber := calcNumber / StrToInt(Edit4.Text);
        end
      end;
    end;
  calcSign := item;
  end;

  Label5.Caption := FloatToStr(calcNumber);
  Label4.Caption := calcSign;
  Edit4.Text := '';
end;


procedure TForm1.Button19Click(Sender: TObject);
begin
    Edit4.Text := '';
    calcNumber := 0;
    Edit4.Text := '';
    Label5.Caption := '0';
    Label4.Caption := '';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
    TrackSum(calcSign);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
    TrackSum('*');
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
    TrackSum('+');
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
      TrackSum('-');
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
    TrackSum('/');
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
      AddNumber(0);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
      AddNumber(1);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
      AddNumber(2);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
      AddNumber(3);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
      AddNumber(7);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
      AddNumber(8);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
      AddNumber(9);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
      AddNumber(4);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
      AddNumber(5);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
      AddNumber(6);
end;

end.
