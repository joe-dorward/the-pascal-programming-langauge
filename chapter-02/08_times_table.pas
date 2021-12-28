PROGRAM times_table(INPUT,OUTPUT);

{ a simple multiplication table program 
  which writes out the specified multiplication 
  table on the screen }

VAR           
  I,  { for loop counter }
  times : INTEGER;

BEGIN 
  WRITE('Please enter the times table you require : ');
  READLN(times);        
  WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

  FOR I := 1 TO 12 DO
    WRITELN('  ',times:2,' * ',I:2,' = ',times*I:2);

END.  { program times_table }
