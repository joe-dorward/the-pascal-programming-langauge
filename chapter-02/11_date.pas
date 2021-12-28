PROGRAM date(INPUT,OUTPUT);

{ a simple date program using case statement } 

VAR
  date : INTEGER;

BEGIN
  WRITE('Enter the date : '); 
  READLN(date);

  CASE date OF
    7, 14, 21, 28 :  
      WRITELN('That day in February, 1994 is a Monday');
    1, 8, 15, 22  : 
      WRITELN('That day in February, 1994 is a Tuesday');
    2, 9, 16, 23  : 
      WRITELN('That day in February, 1994 is a Wednesday');
    3, 10, 17, 24 : 
      WRITELN('That day in February, 1994 is a Thursday');
    4, 11, 18, 25 : 
      WRITELN('That day in February, 1994 is a Friday');
    5, 12, 19, 26 : 
      WRITELN('That day in February, 1994 is a Saturday');
    6, 13, 20, 27 : 
      WRITELN('That day in February, 1994 is a Sunday');
  END;  { end of case statement }

END.  { program date }
