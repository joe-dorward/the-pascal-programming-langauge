PROGRAM if_then_else(INPUT,OUTPUT);

{ program demonstrates simple use of 
  if statement }
            
VAR 
  first, 
  second : CHAR;
            
BEGIN 
  WRITE('Please enter the first character : ');
  READLN(first);
  WRITELN;
  WRITE('Please enter the second character : ');
  READLN(second);
  WRITELN;
 
IF (first = second) THEN 
  WRITELN(first,' is equal to ',second) 

ELSE 
  IF (first < second) THEN 
    WRITELN(first,' ',second)

  ELSE 
    WRITELN(second,' ',first); 

END.  { program if_then_else }
