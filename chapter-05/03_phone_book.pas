PROGRAM phone_book(INPUT,OUTPUT,phone_book_file);

{ this program performs a linear search on an array loaded from a file. 
  It searches for a matching phone number and returns the name and
  address of the person to whom that number is registered }

CONST
  MAX = 20;  { all the elements need not be filled }

TYPE
  A_PHONE_NUMBER = STRING[10];
  A_NAME = STRING[20];
  AN_ADDRESS = STRING[50];

  DETAILS = RECORD
              phone_number : A_PHONE_NUMBER;
              name : A_NAME;
              address : AN_ADDRESS;
            END;

  PHONE_BOOK = ARRAY[1..MAX] OF DETAILS;

VAR
  number_of_entries,
  I : INTEGER;
  area_phone_book : PHONE_BOOK;
  found : BOOLEAN;
  customer_number : A_PHONE_NUMBER;
  phone_book_file : TEXT;

BEGIN
  I := 1;
  found := FALSE;
  RESET(phone_book_file);
  WHILE (I <= MAX) AND (NOT EOF(phone_book_file)) DO
    WITH area_phone_book[number_of_entries] DO
      BEGIN
        READLN(phone_book_file,phone_number);
        READLN(phone_book_file,name);
        READLN(phone_book_file,address);
        I := I + 1;
      END;
      
  number_of_entries := I - 1;   { last increment of "I" set it 1 past number of records in the file }

  CLOSE(phone_book_file);
  WRITE('Enter customer phone number : ');
  READLN(customer_number);

  I := 1;  { reset the value of "I" to 1 }
  WHILE NOT found AND (I <= number_of_entries) DO
    WITH area_phone_book[I] DO
      BEGIN 
        found := phone_number = customer_number; 
        I := I+1;
      END;

  IF found THEN
    WITH area_phone_book[I-1] DO
      BEGIN
        WRITE('The customer is ');
        WRITELN(name,' of ',address);
      END
  ELSE
    BEGIN
      WRITE('There is no entry for ');
      WRITELN(customer_number);
    END;
END.  { program phone_book }
