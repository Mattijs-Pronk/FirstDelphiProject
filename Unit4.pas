unit Unit4;

 interface

 uses
   TestFramework, SysUtils, Unit1;
 type
   TestTCalc = class(TTestCase)
   strict private
     _Unit1: Unit1.TForm1;
   public
     procedure SetUp; override;
     procedure TearDown; override;
   published
    procedure TestButton2Click;
    procedure TestMultiply;
    procedure TestButton3Click;
   end;

 implementation

 procedure TestTCalc.SetUp;
 begin
   _Unit1 := Unit1.TForm1.Create(nil);
 end;

 procedure TestTCalc.TearDown;
 begin
   _Unit1 := nil;
 end;

procedure TestTCalc.TestButton2Click;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

  _Unit1.Edit1.Text := '3';
  _Unit1.Edit2.Text := '3';

      // Expected result 3+3=6
      expectedResult := 6;

  // Act
  _Unit1.Button2.Click;
  actualResult := StrToInt(_Unit1.Edit3.Text);

  // Assert
  CheckEquals(expectedResult, actualResult);
end;



procedure TestTCalc.TestMultiply;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

      // Expected result 6*6=36
      expectedResult := 36;

  // Act
  actualResult := _Unit1.Multiply(6,6);

  // Assert
  CheckEquals(expectedResult, actualResult);
end;



procedure TestTCalc.TestButton3Click;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

      // Expected result 12*12=144
      expectedResult := 144;

  // Act
  _Unit1.Button3.Click;
  actualResult := StrToInt(_Unit1.label3.Caption);

  // Assert
  CheckEquals(expectedResult, actualResult);
end;


end.
