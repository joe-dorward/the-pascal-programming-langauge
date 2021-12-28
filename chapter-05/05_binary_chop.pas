PROGRAM binary_chop(INPUT,OUTPUT);

{ a demonstration program, which searches through an integer array using the binary chop algorithm }

CONST
  MAX = 200000;

TYPE
  INTEGER_ARRAY = ARRAY[1..MAX] OF INTEGER;

VAR
  found : BOOLEAN;
  I,  { for loop counter }
  top_end,
  mid_point,
  bottom_end : INTEGER;  { array counters }

  test_array : INTEGER_ARRAY;
  searched_for_value : INTEGER;

BEGIN
  { load up array with in-order integers }
  FOR I := 1 TO MAX DO  
    test_array[I] := I;

  WRITE('Enter value you wish to search for : ');
  READLN(searched_for_value);

  found := FALSE;
  top_end := MAX;
  bottom_end := 1;
  WHILE (NOT found) AND (bottom_end <= top_end) DO
    BEGIN
      mid_point := (top_end + bottom_end) DIV 2;  { integer 
                                                              division }

      IF test_array[mid_point] = searched_for_value THEN
        found := TRUE  { no further action required }

      ELSE 
        IF test_array[mid_point] < searched_for_value THEN
          bottom_end := (mid_point + 1)  { value in upper half }

        ELSE
          top_end := (mid_point - 1);  { value in lower half }
    END;

  IF found THEN
    BEGIN
      WRITE('The value searched for is in');
      WRITELN(' element ',mid_point:0);
    END
  ELSE 
    WRITELN('Value Not Found');
END.  { program binary_chop }
