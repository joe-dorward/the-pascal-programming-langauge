PROGRAM ascii(INPUT,OUTPUT);

{ the program which wrote out the ASCII table
  in the back of this book }

VAR
  I : INTEGER;

BEGIN
  I := 32;
  WRITE('                          ');
  WRITELN('ASCII  TABLE');
  WRITELN;
  REPEAT
    WRITE('     ',I:3,' = ',CHR(I),'    ');
    WRITE(I+1:3,' = ',CHR(I+1),'    ');
    WRITE(I+2:3,' = ',CHR(I+2),'    ');
    WRITE(I+3:3,' = ',CHR(I+3),'    ');
    WRITELN(I+4:3,' = ',CHR(I+4),'    ');
    I := I+5;
    WRITELN;
  UNTIL I = 127;
END.   { program ascii }
