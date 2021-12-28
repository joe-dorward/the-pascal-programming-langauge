PROGRAM metric(INPUT,OUTPUT); 

{ this program converts kilometers into miles }

CONST 
  factor = 0.62137;
            
VAR 
  kilometers, 
  miles : REAL;
            
BEGIN 
  WRITE('Enter kilometers : ');
  READLN(kilometers);
            
  WRITE(kilometers:4:2,' Km is equivalent to '); 
  WRITELN(kilometers*factor:4:2,' miles');
END.  { program metric }
