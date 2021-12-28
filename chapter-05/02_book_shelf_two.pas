PROGRAM book_shelf_two(INPUT,OUTPUT,booklist);

{ this program is a library catalogue, it asks for the name of an author, 
  then lists all titles by that author }

CONST
  MAX = 15;

TYPE
  AUTHOR_NAME = STRING[20];
  BOOK_TITLE = STRING[50];

  BOOK = RECORD
           author : AUTHOR_NAME;
           title : BOOK_TITLE;
         END;

  BOOK_SHELF = ARRAY[1..MAX] OF BOOK;

VAR
  I,  { loop counter }
  number_of_books,
  number : INTEGER;

  booklist : TEXT;  { file name }
  my_book_shelf : BOOK_SHELF;
  an_author : AUTHOR_NAME;
  found : boolean;

BEGIN
  number_of_books := 0;
  WRITELN;
  RESET(booklist);  { reset file for reading }
  WHILE (number_of_books <= MAX) AND (NOT EOF(booklist)) DO
    WITH my_book_shelf[I] DO  { read in from file }
      BEGIN
        number_of_books := number_of_books + 1;

        READLN(booklist,title);  { assign data to array }
        READLN(booklist,author);
      END;
  CLOSE(booklist);  { all file data in array }

  WRITE('Please enter authors name : ');
  READLN(an_author);
  WRITELN;
        
  found := FALSE;
  
  WRITE('The author ',an_author,' has these titles');
  WRITELN(' in the library');
  WRITELN;

  FOR I := 1 TO number_of_books DO  { search through array }   
    IF my_book_shelf[I].author = an_author THEN
      BEGIN
        found := TRUE; 
        WRITELN(my_book_shelf[I].title);
      END;

  IF NOT(found) THEN 
    WRITELN('Nothing by ',an_author,' was found');

  WRITELN;
  WRITELN(' ~~~~~~~~~~~~~~~~');
  WRITELN(' Search completed'); 
END.  { program book_shelf_two }
