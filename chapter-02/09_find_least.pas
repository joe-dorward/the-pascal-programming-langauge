PROGRAM find_least(INPUT,OUTPUT);

{ program finds the lowest value from input }
            
VAR 
            I,  { for loop counter }
            number,
            least : INTEGER;
            
BEGIN 
             least := MAXINT;   { initialisation of least to the 
                                  maximum possible integer value }

  FOR I := 1 TO 5 DO 
    BEGIN
      WRITE('Enter any integer : ');
      READLN(number);
            
      IF (number < least) THEN 
        least := number; 
    END; 
            
    WRITELN; 
    WRITELN('The smallest integer was : ',least:0);
      
END.  { program find_least }
