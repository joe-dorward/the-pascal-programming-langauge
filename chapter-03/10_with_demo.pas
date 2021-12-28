PROGRAM with_demo(INPUT,OUTPUT);

{ a program which demonstrates the use of the with statement on the type record }

TYPE
  A_NAME = STRING[20];
  AN_ADDRESS = STRING[50];
  A_PHONE_NUMBER = STRING[15];
  A_BIRTHDAY = STRING[20];

  FILE_CARD = RECORD
    name         : A_NAME;
    address      : AN_ADDRESS;
    phone_number : A_PHONE_NUMBER;
    age          : INTEGER;
    birthday     : A_BIRTHDAY;
  END;

VAR
  address_book_entry_one : FILE_CARD;
  address_book_entry_two : FILE_CARD;

{ ------------------------------------------------------------- }
BEGIN
  WITH address_book_entry_one DO
    BEGIN
      name         := 'Smith, John';
      address      := '42 Hill St, Edinburgh';
      phone_number := '231-4635';
      age          := 30;
      birthday     := '14th March, 1964';
    END;

  WITH address_book_entry_two DO
    BEGIN
      name         := 'Jones, Henry';
      address      := '37 Park Cres, Edinburgh';
      phone_number := '421-7640';
      age          := 32;
      birthday     := '14th March, 1962';
    END;

  WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  WITH address_book_entry_one DO
    BEGIN
      WRITELN('Name         : ',name);
      WRITELN('Address      : ',address);
      WRITELN('Phone Number : ',phone_number);
      WRITELN('Age          : ',age);
      WRITELN('Birthday     : ',birthday);
    END;

  WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  WITH address_book_entry_two DO
    BEGIN
      WRITELN('Name         : ',name);
      WRITELN('Address      : ',address);
      WRITELN('Phone Number : ',phone_number);
      WRITELN('Age          : ',age);
      WRITELN('Birthday     : ',birthday);
    END;
END.  { program with_demo }
