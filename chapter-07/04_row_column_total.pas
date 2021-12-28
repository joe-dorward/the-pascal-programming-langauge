PROGRAM row_column_total(INPUT,OUTPUT);

{ program totals up rows and columns of a two-dimensional array }

CONST
  MAX = 5;

TYPE
  TOTAL_ARRAY = ARRAY[1..MAX,1..MAX] OF INTEGER;

VAR
  row,
  column : INTEGER;

  the_array : TOTAL_ARRAY;

BEGIN 
  FOR row := 1 TO MAX DO 
    BEGIN
      the_array[row,MAX] := 0;  { initialises 5th column }
      the_array[MAX,row] := 0;  { initialises 5th row }
    END;

  FOR row := 1 TO 4 DO     { reads the numbers }
    FOR column := 1 TO 4 DO   { into the array }
      BEGIN
        WRITE('Enter an integer for ');
        WRITE('(',row,',',column,') : ');
        READLN(the_array[row,column]);   { read integer directly into array    }
      END;                               { without use of intemediate variable }

  FOR row := 1 TO 5 DO   { write out contents of the array }
    BEGIN              
      WRITELN('+---+---+---+---+---+');
      FOR column := 1 TO 5 DO
        WRITE('|',the_array[row,column]:2,' ');

      WRITELN('|');
    END;
  WRITELN('+---+---+---+---+---+');

  FOR row := 1 TO 4 DO   { totals the rows }
    FOR column := 1 TO 4 DO
      the_array[row,5] := the_array[row,5] + the_array[row,column];

  FOR column := 1 TO 4 DO   { totals the columns }
    FOR row := 1 TO 4 DO
      the_array[5,column] := 
        the_array[5,column] + the_array[row,column];

  WRITE('Press <enter> to see totals');
  READLN;
  writeln;
  writeln('The totals of the rows and columns, are');

  FOR row := 1 TO 5 DO   { write out contents of the array }
    BEGIN              
      WRITELN('+---+---+---+---+---+');

      FOR column := 1 TO 5 DO
        WRITE('|',the_array[row,column]:2,' ');

      WRITELN('|');
    END;
  WRITELN('+---+---+---+---+---+');

END.   { program row_column_total }
