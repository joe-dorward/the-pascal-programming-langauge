PROGRAM while_change(INPUT,OUTPUT);

{ simple while loop demonstration program,
  which either adds or subtracts 1 from
  the number, as long as the while loop
  condition remains true }
        
CONST
  target = 15;

VAR
  number : INTEGER;
            
BEGIN 
  WRITE('Enter number : ');
  READLN(number); 
  WRITELN;

  WHILE number > target DO
    BEGIN
      WRITELN(number);
      number := number - 1;
    END;

END.  { program while_change }
