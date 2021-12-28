PROGRAM demo_calls(INPUT,OUTPUT);

{ this program counts the number of specified characters in a customer's name
  - and searches through an array for that customers name }

CONST
  MAX = 1000;

TYPE
  A_NAME : STRING[25];
  AN_ADDRESS : STRING[50];
  A_NUMBER : STRING[10];
  A_BALANCE : REAL;

  DETAILS = RECORD
              name : A_NAME; 
              address : AN_ADDRESS;
              number : A_NUMBER;
              balance : A_BALANCE;
            END;

  CUSTOMER_ARRAY = ARRAY[1..MAX] OF DETAILS;

VAR   { these are global variables }
  J : INTEGER;   { global counter }
  character : CHAR;
  account_array_one : CUSTOMER_ARRAY;    

  found : BOOLEAN;
  customer_name : A_NAME;
  an_index : INTEGER;
{ ------------------------------------------------------------ }
PROCEDURE search_array(VAR value_found : BOOLEAN;
                       VAR index : INTEGER;
                       VAR customer_name : STRING;
                       VAR account_array_one : CUSTOMER_ARRAY);

{ this procedure will search the array customer_array for customer_name
  returning a boolean and an integer, equal to its position in the array }

VAR   { declare local variables }
  I : INTEGER;

BEGIN
  value_found := FALSE;
  I := 1;
  WHILE NOT(value_found) AND (I <= MAX) DO
    BEGIN  
      IF (account_array_one[I].name = customer_name) THEN
        value_found := TRUE
      ELSE
        I := I + 1;
    END;
    index := I;
END;  { procedure search_array }  
{ ------------------------------------------------------------ }
FUNCTION count_characters(VAR in_string : STRING;
                              the_character : CHAR) : INTEGER;

{ this function returns an integer equal to the number of times 
  the_character appears in the in_string }

VAR   { declare local variables }
  I,
  character_count : INTEGER;

BEGIN
  character_count := 0;

  FOR I := 1 TO STRLEN(in_string) DO
    IF (in_string[I] = the_character) THEN
      character_count := character_count + 1;

  count_characters := character_count;

END;  { function count_characters }
{ ------------------------------------------------------------ }
BEGIN                         {  MAIN  PROGRAM  }
  FOR J := 1 TO MAX DO   { initialise values in array }
    WITH account_array_one[J] DO
        BEGIN
          name := ' ';   { initialise variable to "blank" }
          address := ' ';
          number := ' ';
          balance := 0;   { initialise variable to "zero" }
        END;

  account_array_one[15].name := 'John Smith';
  account_array_one[15].address := '15 Hill St';
  account_array_one[15].number := '12345';
  account_array_one[15].balance := 213.23;

  WRITE('Enter the customer''s name : ');
  READLN(customer_name);

  WRITE('Enter a character : ');
  READLN(character);
  WRITE('The number of ',character,'''s in ');
  WRITE(customer_name,' is ');
  WRITELN(count_characters(customer_name,character):0);

  search_array(found,    { procedure call }
               an_index,
               customer_name,
               account_array_one);

  IF found THEN  { read as "IF (found is true) THEN" }
    BEGIN
      WRITELN('The customer details are:');
      WRITE('    Name    : ');
      WRITELN(account_array_one[an_index].name);
      WRITE('    Address : ');
      WRITELN(account_array_one[an_index].address);
      WRITE('    Number  : ');
      WRITELN(account_array_one[an_index].number);
      WRITE('    Balance : ');
      WRITELN(account_array_one[an_index].balance:6:4);
    END
  ELSE 
    WRITELN('That name is not in the data-base');
END.   { program demo_calls }
