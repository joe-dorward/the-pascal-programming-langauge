PROGRAM book_shelf(INPUT,OUTPUT,booklist);

{ program reads in data from a file and assigns it to an element in an array, 
  then the user is prompted for a number, and the program writes out that element }

CONST
  MAX = 15; 

TYPE
  AUTHOR_NAME = STRING[20];
  BOOK_TITLE = STRING[50];

  BOOK = RECORD
           AUTHOR : AUTHOR_NAME;
           TITLE : BOOK_TITLE;
         END;

  BOOK_SHELF = ARRAY[1..MAX] OF BOOK;

VAR
  number_of_books,   { contains the number of books
                                  loaded into the array } 
  number : INTEGER;
 
  author_in : AUTHOR_NAME;
  title_in : BOOK_TITLE;
            
  booklist : TEXT;  { data file name }
  my_book_shelf : BOOK_SHELF;

BEGIN
  number_of_books := 0;
  WRITELN;
  RESET(booklist);  { reset file for reading }
  WHILE (number_of_books <= MAX) AND (NOT EOF(booklist)) DO
    BEGIN
      number_of_books := number_of_books + 1; 

      READLN(booklist,title_in);
      READLN(booklist,author_in);

      my_book_shelf[number_of_books].title := title_in;
      my_book_shelf[number_of_books].author := author_in;
    END;
  CLOSE(booklist);  { all file data in array }

  WRITE('Please enter number of book : ');
  READLN(number);
  WRITELN;

  IF (number <= number_of_books) AND (number >= 1) THEN
    WITH my_book_shelf[number] DO 
      BEGIN
        WRITE('Book number ',number:0,' is ',title);
        WRITELN(' by ',author); 
      END; 
END.  { program book_shelf }
