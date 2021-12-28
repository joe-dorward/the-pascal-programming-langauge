PROGRAM file_read(INPUT,OUTPUT,booklist);

{ program reads in a file and writes out each entry to the screen as it comes in }

TYPE
  DETAILS = STRING[50];

VAR
  author,
  title : DETAILS;

  booklist : TEXT;  { filename }

BEGIN
  WRITELN;
  RESET(booklist);  { reset file for reading }
  
  WHILE NOT EOF(booklist) DO   { see below for eof }
    BEGIN
      READLN(booklist,title);
      READLN(booklist,author);
      WRITELN(title,' is by ',author,'.');
    END;
  CLOSE(booklist);
END.  { program file_read } 
