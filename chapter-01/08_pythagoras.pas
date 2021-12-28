PROGRAM pythagoras(INPUT,OUTPUT);

{ program calculates the length of a triangles 
  hypotenuse, given the length of the other 
  two sides.}

VAR
  height,
  length : REAL;

BEGIN
  WRITE('Please enter height :  ');
  READLN(height);
  WRITE('Please enter length :  ');
  READLN(length); 
  WRITELN;
  WRITE('The length of the hypotenuse is : ');
  WRITELN(SQRT(SQR(height) + SQR(length)):4:2); 
END.  { program pythagoras }
