PROGRAM volume(INPUT,OUTPUT);

{ program calculates the volume of a room } 
            
VAR 
  width,  
  length,
  height : REAL;
            
BEGIN 
  WRITE('Enter the width of the room : '); 
  READLN(width);
  WRITELN;
  WRITE('Enter the length of the room : '); 
  READLN(length);
  WRITELN;
  WRITE('Enter the height of the room : ');
  READLN(height);
  WRITELN;
  WRITE('The volume of the room is : ');
  WRITELN(width*length*height:4:2);
END.  { program volume }
