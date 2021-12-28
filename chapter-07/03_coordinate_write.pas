PROGRAM coordinate_write(OUTPUT);

{ this program demonstrates how coordinates can be accessed 
  in a two-dimensioned array by using nested FOR loops }

VAR
  X,
  Y : INTEGER;

BEGIN
  FOR Y := 1 TO 5 DO
    BEGIN
      FOR X := 1 TO 10 DO
        WRITE('(',X:1,',',Y:1,')');

       WRITELN;
     END;
END.   { program coordinate_write }
