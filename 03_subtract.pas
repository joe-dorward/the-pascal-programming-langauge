     PROGRAM subtract(INPUT,OUTPUT);

     { This program asks for two numbers
       then subtracts one from the other }

     VAR
       first_integer,
       second_integer,
       answer : INTEGER;

     BEGIN
       WRITE('Enter an integer : ');
       READLN(first_integer);
       WRITE('Enter another integer : ');
       READLN(second_integer);
       
       answer := first_integer - second_integer;
       WRITELN('The answer = ',answer:1);
     END.   { program subtract }
