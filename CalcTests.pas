unit CalcTests;

interface

uses
//hier aangeven welke classes je wilt importeren.
  DUnitX.TestFramework, SysUtils, Unit1;

type
  [TestFixture]
  CalcTestsClass = class
  //class die gebruikt moet gaan worden inlezen als een object.
  strict private _calcTests: Unit1.TForm1;
  public
    //hieronder moet je elke test aangeven die gedaan moet worden.
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure AddNumberSucceeds;
    [Test]
    procedure AddNumberFails;
    [Test]
    procedure TrackSumWithPlusSucceeds;
    [Test]
    procedure TrackSumWithPlusFails;
    [Test]
    procedure TrackSumWithMinusSucceeds;
    [Test]
    procedure TrackSumWithMinusFails;
    [Test]
    procedure TrackSumWithTimesSucceeds;
    [Test]
    procedure TrackSumWithTimesFails;
    [Test]
    procedure TrackSumWithDivideSucceeds;
    [Test]
    procedure TrackSumWithDivideFails;
  end;

implementation

procedure CalcTestsClass.Setup;
begin
  // bij de setup geef je aan dat het form moet worden aangemaakt anders werken de knoppen/textvakken/labels enz... niet.
  _calcTests := Unit1.TForm1.Create(nil);
end;

procedure CalcTestsClass.TearDown;
begin
  // bij het afbreken van de testen moet het form ook weer gesloten worden.
  _calcTests.Free;
end;



procedure CalcTestsClass.AddNumberSucceeds;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 64;
  _calcTests.Edit4.Text := '6';

  // Act
  _calcTests.AddNumber(4);
  actualResult := StrToInt(_calcTests.Edit4.Text);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.AddNumberFails;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 64;
  _calcTests.Edit4.Text := '8';

  // Act
  _calcTests.AddNumber(4);
  actualResult := StrToInt(_calcTests.Edit4.Text);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreNotEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.TrackSumWithPlusSucceeds;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 10;
  _calcTests.calcNumber := 4;
  _calcTests.Edit4.Text := '6';

  // Act
  _calcTests.TrackSum('+');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.TrackSumWithPlusFails;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 10;
  _calcTests.calcNumber := 4;
  _calcTests.Edit4.Text := '126213123';

  // Act
  _calcTests.TrackSum('+');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreNotEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.TrackSumWithMinusSucceeds;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := -2;
  _calcTests.calcNumber := 4;
  _calcTests.Edit4.Text := '6';

  // Act
  _calcTests.TrackSum('-');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;

procedure CalcTestsClass.TrackSumWithMinusFails;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := -2;
  _calcTests.calcNumber := 4;
  _calcTests.Edit4.Text := '623423';

  // Act
  _calcTests.TrackSum('-');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreNotEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.TrackSumWithTimesSucceeds;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 24;
  _calcTests.calcNumber := 4;
  _calcTests.Edit4.Text := '6';

  // Act
  _calcTests.TrackSum('*');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.TrackSumWithTimesFails;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 24;
  _calcTests.calcNumber := 4;
  _calcTests.Edit4.Text := '6123123';

  // Act
  _calcTests.TrackSum('*');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreNotEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.TrackSumWithDivideSucceeds;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 5;
  _calcTests.calcNumber := 10;
  _calcTests.Edit4.Text := '2';

  // Act
  _calcTests.TrackSum('/');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreEqual(expectedResult, actualResult);
end;



procedure CalcTestsClass.TrackSumWithDivideFails;
var expectedResult: Integer;
var actualResult: Integer;
begin
  // Arrange
  expectedResult := 5;
  _calcTests.calcNumber := 10;
  _calcTests.Edit4.Text := '10';

  // Act
  _calcTests.TrackSum('/');
  actualResult := StrToInt(_calcTests.Label5.Caption);

  // Assert
  Assert.IsNotEmpty(actualResult);
  Assert.AreNotEqual(expectedResult, actualResult);
end;

initialization
  TDUnitX.RegisterTestFixture(CalcTestsClass);
end.
