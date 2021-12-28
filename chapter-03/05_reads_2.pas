PROGRAM reads_2(INPUT,OUTPUT);

{ this program demonstrates the difference 
  between the READ and READLN }

VAR
  first,
  second,
  third,
  fourth,
  fifth,
  sixth : INTEGER;

BEGIN

  WRITE('This is the prompt for the readlns : ');
  READLN(first,second,third);
  WRITELN(first,second,third);

  WRITE('This is the prompt for the reads : ');
  READ(fourth,fifth,sixth);
  WRITELN(fourth,fifth,sixth);

  WRITE('Press <enter> to continue : ');
  READLN;
END.   { program reads_2 }
