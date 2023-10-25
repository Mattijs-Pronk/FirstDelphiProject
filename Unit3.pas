unit Unit3;

 interface

 uses
   TestFramework, Unit1;
 type
   // Test methods for class TCalc
   TestTCalc = class(TTestCase)
   strict private
     _Unit1: Unit1.TForm1;
   public
     procedure SetUp; override;
     procedure TearDown; override;
   published
//     procedure TestAdd;
//     procedure TestSub;
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

// procedure TestTCalc.TestAdd;
// var
//   _result: System.Integer;
//   y: System.Integer;
//   x: System.Integer;
// begin
//   _result := _Unit1.Add(x, y);
//   // TODO: Add testcode here
// end;
//
// procedure TestTCalc.TestSub;
// var
//   _result: System.Integer;
//   y: System.Integer;
//   x: System.Integer;
// begin
//   _result := _Unit1.Sub(x, y);
//   // TODO: Add testcode here
// end;

end.
