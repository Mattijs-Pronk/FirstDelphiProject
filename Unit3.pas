unit Unit3;

 interface

 uses
   Unit1,
   TestFramework,
   GUITestRunner;
 type
   // Test methods for class TCalc
   TestTCalc = class(TTestCase)
   strict private
     _Unit1: Unit1.TForm1;
   public
     procedure SetUp; override;
     procedure TearDown; override;
   published
      procedure TestMultiply;

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

end.
