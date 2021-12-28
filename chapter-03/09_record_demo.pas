PROGRAM record_demo(INPUT_OUTPUT);

{ a program demonstrating the use of the type record }

TYPE
  A_NAME = STRING[20];
  AN_ADDRESS = STRING[50];
  A_PHONE_NUMBER = STRING[15];
  A_BIRTHDAY = STRING[20];

  FILE_CARD = RECORD
    name : A_NAME;
    address : AN_ADDRESS;
    phone_number : A_PHONE_NUMBER;
    age : INTEGER;
    birthday : A_BIRTHDAY;
  END;

VAR
  address_book_entry_one : FILE_CARD;
  address_book_entry_two : FILE_CARD;
           
BEGIN
  address_book_entry_one.name         := 'Smith, John';
  address_book_entry_one.address      := '42 Hill St, Edinburgh';
  address_book_entry_one.phone_number := '231-4635';
  address_book_entry_one.age          := 30;
  address_book_entry_one.birthday     := '14th March, 1964';

  address_book_entry_two.name         := 'Jones, Henry';
  address_book_entry_two.address      := '37 Park Cres, Edinburgh';
  address_book_entry_two.phone_number := '421-7640';
  address_book_entry_two.age          := 32;
  address_book_entry_two.birthday     := '14th March, 1962';

  WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  WRITELN('Name         : ',address_book_entry_one.name);
  WRITELN('Address      : ',address_book_entry_one.address);
  WRITELN('Phone Number : ',address_book_entry_one.phone_number);
  WRITELN('Age          : ',address_book_entry_one.age);
  WRITELN('Birthday     : ',address_book_entry_one.birthday);
  WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
  WRITELN('Name         : ',address_book_entry_two.name);
  WRITELN('Address      : ',address_book_entry_two.address);
  WRITELN('Phone Number : ',address_book_entry_two.phone_number);
  WRITELN('Age          : ',address_book_entry_two.age);
  WRITELN('Birthday     : ',address_book_entry_two.birthday);
END.  { program record_demo }
