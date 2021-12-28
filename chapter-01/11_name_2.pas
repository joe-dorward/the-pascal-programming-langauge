PROGRAM name_2(INPUT,OUTPUT);

VAR
  a_name : STRING[10];
  I : INTEGER;
          
BEGIN
  WRITE('Please type in a name : ');
  READLN(a_name);
  WRITELN;
  WRITE('Enter a number between 1 and 15 : ');
  READLN(I);
  WRITE('The "',I:2,'th" character in "');
  WRITELN(a_name,'" is "',a_name[I],'"');
END.  { program name_2 }
