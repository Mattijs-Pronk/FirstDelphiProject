unit Unit2;

interface

uses
//hier aangeven welke classes je wilt importeren, dus in dit geval "GettingStarted1.pas" van "GettingStarted.exe".
  DUnitX.TestFramework, SysUtils, Unit1;

type
  [TestFixture]
  TMyTestObject = class
  //class die gebruikt moet gaan worden inlezen als een object in dit geval "_GettingStarted1".
  strict private _GettingStarted1: Unit1.TForm1;
  public
    //hieronder moet je elke test aangeven die gedaan moet worden.
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestButton1Click;
    [Test]
    procedure TestButton2Click;
    [Test]
    procedure TestMultiply;
    [Test]
    procedure TestButton3Click;
  end;

implementation

procedure TMyTestObject.Setup;
begin
  // bij de setup geef je aan dat het form moet worden aangemaakt anders werken de knoppen/textvakken/labels enz... niet.
  _GettingStarted1 := Unit1.TForm1.Create(nil);
end;

procedure TMyTestObject.TearDown;
begin
  // bij het afbreken van de testen moet het form ook weer gesloten worden.
  _GettingStarted1.Free;
end;



//vanaf hier beginnen de methodes die worden aangeroepen in de gekozen class van het "GettingStarted1.pas".
procedure TMyTestObject.TestButton1Click;
begin
  // Arrange
  var expectedResult: Boolean;
  var actualResult: Boolean;

  // Act
  _GettingStarted1.Button1.Click;
  actualResult := StrToBool(_GettingStarted1.label1.Caption);

  // Assert
  Assert.IsNotNull(actualResult);
  Assert.IsTrue(actualResult);
end;




procedure TMyTestObject.TestButton2Click;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

  _GettingStarted1.Edit1.Text := '3';
  _GettingStarted1.Edit2.Text := '3';

      // Expected result 3+3=6
      expectedResult := 6;

  // Act
  _GettingStarted1.Button2.Click;
  actualResult := StrToInt(_GettingStarted1.Edit3.Text);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure TMyTestObject.TestMultiply;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

      // Expected result 6*6=36
      expectedResult := 36;

  // Act
  actualResult := _GettingStarted1.Multiply(6,6);

  // Assert
  Assert.IsNotNull(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure TMyTestObject.TestButton3Click;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

      // Expected result 12*12=144
      expectedResult := 144;

  // Act
  _GettingStarted1.Button3.Click;
  actualResult := StrToInt(_GettingStarted1.label3.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);

end.
