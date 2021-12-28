PROGRAM test_functions(INPUT,OUTPUT);

{ this program demonstrates how to call functions }

VAR
  real_number : REAL;
  an_integer : INTEGER;

{-----------------------------------------------}
FUNCTION square(a_number : REAL) : REAL;

{ this function produces the square of a number }

BEGIN
  square := a_number * a_number;
END;   { function square }
{-----------------------------------------------}
FUNCTION is_it_odd(a_number : INTEGER) : BOOLEAN;

{ this function returns a boolean value TRUE if the argument 
  is an odd number, FALSE if the argument is an even number }

BEGIN
  IF (a_number MOD 2 = 1) THEN
    is_it_odd := TRUE

  ELSE is_it_odd := FALSE;
END;  { function is_it_odd }
{-----------------------------------------------}
BEGIN                           { MAIN  PROGRAM }
  WRITE('Enter a real number : ');
  READLN(real_number);
  WRITE('The square of ',real_number:4:2,' is ');
  WRITELN(square(real_number):4:2); { function called in the WRITELN }

  WRITE('Enter an integer : ');
  READLN(an_integer);

  { function call in IF - THEN condition }
  IF is_it_odd(an_integer) THEN
    BEGIN
      WRITE('The integer ',an_integer:0);
      WRITELN(' is an odd number!');
    END
  ELSE
    BEGIN
      WRITE('The integer ',an_integer);
      WRITELN(' is an even number');
    END;
END.   { program test_functions }
