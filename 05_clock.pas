PROGRAM clock(INPUT,OUTPUT);

{ this program reads in an integer and calculates
  the total number of hours and minutes }

VAR
  minutes_in,
  minutes,
  hours : INTEGER;

BEGIN { body }
  WRITE('Enter total number of minutes :  ');
  READLN(minutes_in);

  hours := minutes_in DIV 60;
  minutes := minutes_in MOD 60;

  WRITELN('The hours are: ',hours:2);
  WRITELN('The minutes are: ',minutes:2);
END. { body }
