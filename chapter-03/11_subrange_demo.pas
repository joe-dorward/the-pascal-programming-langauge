PROGRAM subrange_demo(INPUT,OUTPUT);

{ this is a program which uses subranges and enumerated types to create types for an appointment recording program }

TYPE
 MONTH = (January,February,March,April,May,June,July,August,September,October,November,December);

  DATE = 1..31;
  DAY = (Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday);
  HOUR = 0..23;
  MINUTE = 0..59;

  APPOINTMENT = RECORD
    the_month  : MONTH;
    the_date   : DATE;
    the_day    : DAY;
    the_hour   : HOUR; 
    the_minute : MINUTE; 
  END;   

VAR
  an_appointment : APPOINTMENT;

  month_in  : MONTH;
  date_in   : DATE;
  day_in    : DAY;
  hour_in   : HOUR;
  minute_in : MINUTE;

BEGIN
  WRITE('Enter the appointed month : ');
  READLN(month_in);
  WRITE('Enter the appointed date : ');
  READLN(date_in);
  WRITE('Enter the appointed day : ');
  READLN(day_in);
  WRITE('Enter the appointed hour : ');
  READLN(hour_in);
  WRITE('Enter the appointed minute : ');
  READLN(minute_in);

  WITH an_appointment DO
    BEGIN
      the_month  := month_in; 
      the_date   := date_in;
      the_day    := day_in;
      the_hour   := hour_in;
      the_minute := minute_in;
    END;

  WITH an_appointment DO
    BEGIN
      WRITELN;
      WRITELN('You have an appointment on');
      WRITELN('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
      WRITE(day_in,' the ',date_in:2,' of ',month_in);
      WRITELN(', At ',hour_in:2,':',minute_in:2);
    END; 
END.  { program subrange_demo }
