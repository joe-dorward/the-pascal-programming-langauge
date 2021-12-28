PROGRAM strlen_demo(INPUT,OUTPUT);

{ demonstration program using the
  standard function `strlen' }

VAR
  name,
  address : STRING[25];
  I : INTEGER;

BEGIN
  WRITE('Enter name : ');
  READLN(name);
  WRITE('Enter address : ');
  READLN(address);

  WRITE(name);
  FOR I := STRLEN(name + 1) TO 40 DO 
    WRITE('.');
             
  WRITELN(address);
END.   { program strlen_demo }
