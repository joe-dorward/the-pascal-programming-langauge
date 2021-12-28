PROGRAM powers_1(INPUT,OUTPUT);

{ a demonstration program of how to call your own functions }

VAR
  any_number,
  answer : REAL;
  any_other_number : INTEGER;

{ ------------------------------------------------------------ }
FUNCTION power(base: REAL; exponent : INTEGER) : REAL;
    
{ this function will return the result of any real number to any 
  power }

VAR   { declare local variables }
  I : INTEGER;
  product : REAL;

BEGIN
  product := 1;
  FOR I := 1 TO exponent DO
    product := product * base;

  power := product;
END;   { function power }
{ ------------------------------------------------------------ }
BEGIN                                         { MAIN  PROGRAM }
  WRITE('This program calculates the ');
  WRITELN('powers of numbers');

  WRITE('Enter the base number : ');
  READLN(any_number);
  WRITE('Enter the exponent number : ');
  READLN(any_other_number);

  answer := power(any_number,any_other_number);

  WRITE('The result is : ',answer:2:4);
END.   { program powers }
