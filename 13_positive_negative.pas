PROGRAM positive_negative(INPUT,OUTPUT);

{ this program tells whether an input 
  number is positive }

VAR
  number : INTEGER;

BEGIN
  WRITE('Please enter an integer : ');
  READLN(number);

  IF number >= 0 THEN
    WRITELN('The number ',number:0,' is positive')
  ELSE
    WRITELN('The number ',number:0,' is negative');
    
END.   { program positive_negative }
