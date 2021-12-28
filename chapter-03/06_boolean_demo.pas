PROGRAM boolean_demo(INPUT,OUTPUT);

{ a small demonstration program showing
  how to use the boolean facility }

BEGIN
  WRITELN('-------------------------------------------------');
  WRITE('The expression 1 + 1 = 3 is : ');
  WRITELN(1 + 1 = 3);
  WRITE('The expression a < b is : ');
  WRITELN('a' < 'b');
  WRITE('The expression mouse > elephant is : ');
  WRITELN('mouse' > 'elephant');
  WRITE('The expression 1002340001 < 1002340002 is : ');
  WRITELN('1002340001' < '1002340002');
  WRITE('The expression (1 + 1 = 2) and (3 - 1 = 7) is : ');
  WRITELN((1 + 1 = 2) AND (3 - 1 = 7));
  WRITE('The expression (1 + 1 = 2) or (3 - 1 = 7) is : ');
  WRITELN((1 + 1 = 2) OR (3 - 1 = 7));
  WRITE('The expression not(true) is : ');
  WRITELN(NOT TRUE);
  WRITE('The expression not(false) is : ');
  WRITELN(NOT FALSE);
  WRITELN;
END.   { program boolean_demo }
