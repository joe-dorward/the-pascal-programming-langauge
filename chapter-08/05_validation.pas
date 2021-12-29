PROGRAM validation(INPUT,OUTPUT);

{ this program reads in a string and checks 
  to see if each character is a number }

TYPE
  TEN_ELEMENT_STRING = STRING[10];

VAR
  number_string : TEN_ELEMENT_STRING;
  validated_number : INTEGER;
  good_number : BOOLEAN;
       
{ -------------------------------------------------------------- }
PROCEDURE validate(VAR is_a_digit : BOOLEAN;
                   VAR number : INTEGER;
                   VAR in_string : TEN_ELEMENT_STRING);

{ this procedure validates integer input read in as a string }

VAR
  subscript,
  multiplier : INTEGER;   { local variables }

BEGIN
  is_a_digit := TRUE;
  multiplier := 1;
  subscript := STRLEN(in_string);
  number := 0;

  WHILE (subscript >= 1) AND is_a_digit DO
    BEGIN
      is_a_digit := (in_string[subscript] >= '0') AND
                    (in_string[subscript] <= '9');
      number := number + (ORD(in_string[subscript]) - 48) * multiplier;
      subscript := subscript - 1;
      multiplier := multiplier * 10;
    END;
END;   { procedure validate }
{ -------------------------------------------------------------- }
BEGIN                                           { MAIN   PROGRAM }
  WRITE('Enter a number : ');
  readln(number_string);

  validate(good_number,validated_number,number_string);
                  
  IF good_number THEN 
    WRITELN('Input string is a number ',validated_number:1)
  ELSE
    WRITELN('Input string has non-numerical elements');

END.   { program validation }
