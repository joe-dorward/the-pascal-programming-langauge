PROGRAM customer(INPUT,OUTPUT);

{ a program which manipulates strings
  to build names and addresses }           

VAR
  forename,
  surname,
  road,
  town : STRING[15];
  number : STRING[4];
             
  customer_name : STRING[31];  { 15 + 1 + 15 is max size }
  customer_address : STRING[50];
             
BEGIN
  WRITE('Please enter the customer''s first name : ');
  READLN(forename); 
  WRITELN;
  WRITE('Please enter the customer''s last name : ');
  READLN(surname);
  WRITELN;
  WRITE('Please enter the customer''s address');
  WRITE('Flat/House number : ');
  READLN(number);
  WRITE('Street/Road, etc : '); 
  READLN(road);
  WRITE('Town/City, etc ? : ');
  READLN(town);
           
  customer_name := forename + ' ' + surname;
  customer_address := number + ' ' + road + ', ' + town + '.';

  WRITE('The customer ',customer_name,' lives at');
  WRITELN(customer_address);
END.   { program customer }
