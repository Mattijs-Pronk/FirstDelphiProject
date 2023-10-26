unit Unit2;

interface

uses
//hier aangeven welke classes je wilt importeren, dus in dit geval "GettingStarted1.pas" van "GettingStarted.exe".
  DUnitX.TestFramework, SysUtils, Unit1;

type
  [TestFixture]
  SimpleTestClass = class
  //class die gebruikt moet gaan worden inlezen als een object in dit geval "_GettingStarted1".
  strict private _simpleTest: Unit1.TForm1;
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

procedure SimpleTestClass.Setup;
begin
  // bij de setup geef je aan dat het form moet worden aangemaakt anders werken de knoppen/textvakken/labels enz... niet.
  _simpleTest := Unit1.TForm1.Create(nil);
end;

procedure SimpleTestClass.TearDown;
begin
  // bij het afbreken van de testen moet het form ook weer gesloten worden.
  _simpleTest.Free;
end;



//vanaf hier beginnen de methodes die worden aangeroepen in de gekozen class van het "GettingStarted1.pas".
procedure SimpleTestClass.TestButton1Click;
begin
  // Arrange
  var expectedResult: Boolean;
  var actualResult: Boolean;

  // Act
  _simpleTest.Button1.Click;
  actualResult := StrToBool(_simpleTest.label1.Caption);

  // Assert
  Assert.IsNotNull(actualResult);
  Assert.IsTrue(actualResult);
end;




procedure SimpleTestClass.TestButton2Click;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

  _simpleTest.Edit1.Text := '3';
  _simpleTest.Edit2.Text := '3';

      // Expected result 3+3=6
      expectedResult := 6;

  // Act
  _simpleTest.Button2.Click;
  actualResult := StrToInt(_simpleTest.Edit3.Text);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure SimpleTestClass.TestMultiply;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

      // Expected result 6*6=36
      expectedResult := 36;

  // Act
  actualResult := _simpleTest.Multiply(6,6);

  // Assert
  Assert.IsNotNull(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure SimpleTestClass.TestButton3Click;
begin
  // Arrange
  var expectedResult: Integer;
  var actualResult: Integer;

      // Expected result 12*12=144
      expectedResult := 144;

  // Act
  _simpleTest.Button3.Click;
  actualResult := StrToInt(_simpleTest.label3.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;

initialization
  TDUnitX.RegisterTestFixture(SimpleTestClass);
end.
