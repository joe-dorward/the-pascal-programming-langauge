PROGRAM calculator(INPUT,OUTPUT);

{ a calculator using case statements }

VAR
  first,
  second,
  answer : REAL;
  sign : CHAR;

BEGIN
  WRITE('Please enter first number  :  ');
  READLN(first);
  WRITE('Please enter any sign      :  ');
  READLN(sign);
  WRITE('Please enter second number :  ');
  READLN(second);

  CASE sign OF
    '+': answer := first + second;
    '-': answer := first - second;
    '*': answer := first * second;
    '/': answer := first / second;
  END;

  WRITELN;
  WRITE('The answer is : ',first:4:2,' ',sign);
  WRITELN(' ',second:4:2,' = ',answer:4:2);
END.  { program calculator } 
