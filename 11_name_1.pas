PROGRAM name_1(OUTPUT);

{ string demonstration program }

VAR
  name : STRING[10];
           
BEGIN
  name := 'Phil Grant';
  WRITELN;
  WRITELN('The second character of ',name,' is ',name[2]);
END.  { program name_1 }
