PROGRAM file_demo(INPUT,OUTPUT,filename);

{ a simple file handling demonstration program which opens, writes to, and closes a file.
  Then opens, reads from, writes to screen, and closes the file again }

TYPE
  A_NAME = STRING[20];
  AN_ADDRESS = STRING[50];

VAR
  number_of_entries : INTEGER;  { loop counter }
  name : A_NAME;
  address : AN_ADDRESS;
  filename : TEXT;

BEGIN
  REWRITE(filename);  { open file for writing to }
  WRITE('Please enter a name: ');
  READLN(name);
  WRITE('Please enter address : ');
  READLN(address);

  WHILE (name <> '') AND (address <> '') DO
    BEGIN
      number_of_entries := number_of_entries + 1;

      WRITELN(filename,name);
      WRITELN(filename,address);
      WRITE('Please enter a name: ');
      READLN(name);
      WRITE('Please enter address : ');
      READLN(address);
    END;

  CLOSE(filename,'SAVE');
  
  WRITE('The address file has been closed with');
  WRITELN(number_of_entries:0,' entries');
  WRITELN;
  
  RESET(filename);  { open file for reading }
  
  WHILE NOT EOF(filename) DO
    BEGIN
      READLN(filename,name);
      READLN(filename,address);
      WRITELN(name,' lives at ',address);
    END;
    
  CLOSE(filename);
END.  { program file_demo }
