PROGRAM array_insert(INPUT,OUTPUT);

{ this is a demonstration program which uses the procedure fill_array }

CONST
  MAX = 10;

TYPE
  AN_ARRAY = ARRAY[1..MAX] OF CHAR;

VAR
  I,
  count : INTEGER;
  a_character : CHAR;

  character_array : AN_ARRAY;
{ -------------------------------------------------------------- }
PROCEDURE insert(VAR character_array : AN_ARRAY;
                          new_character : CHAR);

{ this procedure will : insert a character into an array in order unless 
       all the elements are less than the new_character, meaning there is 
       no place to insert. If the new_character is less than an element in 
       the array, the element in character_array[I] will be over written by 
       the character in character_array[I - 1]}

VAR   { declare local variables }
  I,
  J : INTEGER;
  inserted : BOOLEAN;

BEGIN
  I := 1;
  inserted := FALSE;
  WHILE (I <= MAX) AND NOT(inserted) DO
    BEGIN
      IF (character_array[I] = CHR(0)) THEN   { see NOTE below }
        BEGIN
          character_array[I] := new_character;
          inserted := TRUE;
        END
      ELSE
        { move contents of array along and insert
          new_character into character_array[I]}

        IF (new_character < character_array[I]) THEN
          BEGIN
            FOR J := MAX DOWNTO (I + 1) DO
              character_array[J] := character_array[J - 1];

            character_array[I] := new_character;
            inserted := TRUE;
          END
        ELSE
        I := I + 1;
    END;
END;  { procedure insert }
{ -------------------------------------------------------------- }
BEGIN                                          {  MAIN  PROGRAM  }
  { first initialise each element of the array to the ASCII 
    null character }

  FOR I := 1 TO MAX Do
    character_array[I] := CHR(0);

  WRITE('Please enter a character : ');
  READLN(a_character);

  count := 0;
  WHILE (a_character <> ' ') AND (count < MAX) DO
    BEGIN
      count := count + 1;
      writeln('Count is ',count);
      insert(character_array,a_character);

      WRITELN('+---+---+---+---+---+---+---+---+---+---+');

      FOR I := 1 TO MAX DO
        WRITE('|',character_array[I]:2,' ');

      WRITELN('|');
      WRITELN('+---+---+---+---+---+---+---+---+---+---+');

      WRITE('Please enter a character : ');
      READLN(a_character);
    END;
END.   { program array_insert }
