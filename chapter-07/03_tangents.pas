PROGRAM tangents(INPUT,OUTPUT);

{ this program calculates the tangent of a given number using a function and without. }

VAR
  number : REAL;

{---------------------------------------------}
FUNCTION tan(VAR a_value : REAL) : REAL;

{ function returns the tangent of a number }

BEGIN
  tan := SIN(a_value) / COS(a_value);
END;   { function tan }
{---------------------------------------------}
{                       MAIN  PROGRAM         }
BEGIN
  WRITE('Enter a number : ');
  READLN(number);
  WRITELN;
  WRITELN('The tangent of ',number:2:4,' is ');
  WRITELN;
  WRITE('First answer ',SIN(number)/COS(number):2:4);
  WRITELN(' radians');
  WRITELN;
  WRITELN('Second answer ',tan(number):2:4,' radians');
END.   { program tangents }
