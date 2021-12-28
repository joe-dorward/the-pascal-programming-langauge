PROGRAM capitals(INPUT,OUTPUT);

{ this program asks the user to enter either the capital of the named country, 
  or the string 'pass' which will cause the program to move on to the next question }

CONST
  COLUMNS = 2;   { x coordinates }
  ROWS = 5;      { y coordinates }

TYPE
  NAMES = STRING[15];
  AN_ARRAY = ARRAY[1..COLUMNS,1..ROWS] OF NAMES;

VAR
  country : AN_ARRAY;
  capital : NAMES;
  I : INTEGER;
  correct : BOOLEAN;

BEGIN
  country[1,1] := 'Britain'; country[2,1] := 'London';
  country[1,2] := 'France';  country[2,2] := 'Paris';
  country[1,3] := 'Spain';   country[2,3] := 'Madrid';
  country[1,4] := 'Ireland'; country[2,4] := 'Dublin';
  country[1,5] := 'Norway';  country[2,5] := 'Oslo';

  WRITELN('Enter an answer or pass ');
  WRITELN('  Press enter to start');
  READLN;

  FOR I := 1 TO 5 DO
    BEGIN
      REPEAT
        WRITE('What is the capital of ',country[1,I],' ');
        READLN(capital);
        correct := country[2,I] = capital;

        IF (capital = 'pass') THEN
          WRITELN('It is ',country[2,I]);

      UNTIL correct OR (capital = 'pass');
    END;
END.   { program capitals }
