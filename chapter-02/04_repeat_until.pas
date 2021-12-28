PROGRAM repeat_until(INPUT,OUTPUT);

{ a demonstration program for the 
  repeat - until loop }

VAR
  condition,
  colour : string[10];

BEGIN
  REPEAT

    WRITE('Enter light colour : ');
    READLN(colour);
    WRITE('Is crosswalk occupied or clear : ');
    READLN(condition);

  UNTIL ((colour = 'green') and (condition = 'clear')) or
        ((colour = 'orange') and (condition = 'clear'));

  WRITELN('You can go now');
END.  { program repeat_until }
