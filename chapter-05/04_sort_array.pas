program sort_array(input,output);

{ this program, uses the selection sort algorithm
          to sort the array right before your eyes.
          The use of double digits such as 04, 08 is for 
           screen formatting purposes only }

CONST
  MAX = 15;

TYPE
  INTEGER_ARRAY = ARRAY[1..MAX] OF INTEGER;

VAR
  I,
  J,
  K,
  swaps,  { holds the number of swaps done }
  temp,
  number_of_loaded_elements : INTEGER;

  test_array : INTEGER_ARRAY;

BEGIN
  test_array[1] := 04; test_array[2] := 07;
  test_array[3] := 09; test_array[4] := 03;
  test_array[5] := 15; test_array[6] := 02;
  test_array[7] := 08; test_array[8] := 05;
  test_array[9] := 12; test_array[10] := 18;

  number_of_loaded_elements := 10;

  WRITELN('       *** Initial  Condition ***');
  WRITELN;
  WRITELN('+---+---+---+---+---+---+---+---+---+---+');

  FOR I := 1 TO number_of_loaded_elements DO
    WRITE('|',test_array[I]:2,' ');

  WRITELN('|');
  WRITELN('+---+---+---+---+---+---+---+---+---+---+');

  FOR I := 1 TO number_of_loaded_elements DO
    { set J to start at the element ahead of I }
    FOR J := (I+1) TO number_of_loaded_elements DO 
      IF test_array[J] < test_array[I] THEN
        BEGIN
          swaps := swaps+1;
          temp := test_array[J];
          test_array[J] := test_array[I];
          test_array[I] := temp;

          WRITE('Press <enter> to continue : ');
          READLN;
          WRITELN;
          WRITE('     * * Condition After ');
          WRITELN(swaps:0,' swaps * *');
          WRITELN('+---+---+---+---+---+---+---+---+---+---+');

          { write out the contents of the array }
          FOR K := 1 TO number_of_loaded_elements DO
            WRITE('|',test_array[K]:2,' ');

          WRITE('|');
          WRITELN(' When I = ',I:0,', and J = ',J:0);
          WRITELN('+---+---+---+---+---+---+---+---+---+---+');
        END;
        
  WRITELN;
  WRITELN(' * Sorting Complete *');
  WRITELN;
END.   { program sort_array }
