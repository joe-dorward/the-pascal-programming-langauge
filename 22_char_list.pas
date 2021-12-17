PROGRAM char_list(INPUT,OUTPUT);

{ program writes out list of 
  ASCII characters }
 
VAR
  I : CHAR;  { for loop counter }

BEGIN
  FOR I := '2' DOWNTO '%' DO
    WRITELN('The character is : ',I);

END.  {  program char_list }
