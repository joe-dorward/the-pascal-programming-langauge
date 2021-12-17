PROGRAM while_adder(INPUT,OUTPUT);

{ a simple while loop demonstration program,
  using -1 as the termination condition }

VAR
  number,
  total : INTEGER;

BEGIN
  total := 0;   { initialise to zero }

  WRITELN('Enter -1 to quit');
  WRITELN('----------------');

  WRITE('Enter a number : ');
  READLN(number);

  WHILE (number <> -1) do
  BEGIN
    total := total + number;
    WRITE('Enter a number : ');
    READLN(number);
  END;
             
  WRITELN;
  WRITELN('The total = ',total:0);
END.  { program while_adder }
