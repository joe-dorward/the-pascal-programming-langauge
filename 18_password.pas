PROGRAM password(INPUT,OUTPUT);

{ a password demonstration program }

CONST
  good_password = '!42a';  { can be anything }

VAR
  pass_word : string[4];

BEGIN
    WRITELN;
    WRITELN(' This is a restricted use machine');
    WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    WRITELN;
    REPEAT
      WRITE('Please enter PASSWORD : ');
      READLN(pass_word);

      IF pass_word <> good_password THEN
        WRITELN('access DENIED, try again');

    UNTIL pass_word = good_password;

  WRITELN;
  WRITELN('Password ACCEPTED, continue');
  WRITELN;
  WRITELN(' Welcome to the World Bank Data Base');
  WRITELN('-------------------------------------');
END.  { program password }
