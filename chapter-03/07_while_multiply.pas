PROGRAM while_multiply(INPUT,OUTPUT);

{ a more sophisticated version of program four in
  chapter 2, using both the type boolean and a while
  loop }

VAR
  I,   { loop counter }
  table,
  answer : INTEGER;

  correct : BOOLEAN;

BEGIN
  WRITE('Which multiplication table do you want to do ?  ');
  READLN(table);
  WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

  I := 1; 
  WHILE (I <= 12) DO
    BEGIN
      WRITE('What does: ',I:2,' * ',table:0,' = ');
      READLN(answer);

      correct := (I * table) = answer; { boolean evaluation of answer }

      IF correct THEN
        BEGIN
          WRITELN('Your answer is correct! ');
          I := I + 1;
          correct := FALSE;  { reset to original state }
       END
      ELSE
        BEGIN
          WRITE('Your answer is incorrect,');
          WRITELN(' Please try again!');
        END;
  END;
END.  { program while_multiply }
