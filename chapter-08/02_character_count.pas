PROGRAM character_count(INPUT,OUTPUT);

{ this program makes a more powerful use of the function count_characters. 
  It could form the basis of a text analysing program }

TYPE
  SENTENCE : STRING[50];

VAR   { declare global variables }
  the_string : SENTENCE;

  a_char : CHAR;

  number_of_characters,
  count : INTEGER;

{ ------------------------------------------------------------ }
FUNCTION count_characters(VAR in_string : SENTENCE;
                              the_character : CHAR) : INTEGER;

{ this function returns an integer equal to the number of times 
  "the_character" appears in "in_string" }

VAR   { declare local variables }
  I,
  character_count : INTEGER;

BEGIN
  character_count := 0;

  FOR I := 1 TO STRLEN(in_string) DO
    IF (in_string[I] = the_character) THEN
      character_count := character_count + 1;

  count_characters := character_count;

END;   { function count_characters }
{ ------------------------------------------------------------ }
BEGIN                                          { MAIN  PROGRAM }
  WRITE('Enter the text : ');
  READLN(the_string);

  WRITELN('The text contains');
    FOR a_char!' TO '~' DO
      BEGIN
        count := count_characters(the_string,a_char)

        IF (count > 0) THEN
          BEGIN
            number_of_characters := number_of_characters + count;
            WRITELN(count,' character "',a_char);
          END;
      END;
  WRITE('There are ',number_of_characters:2);  
  WRITELN(' characters in the sentence not counting spaces.');
END.  { program character_count }
