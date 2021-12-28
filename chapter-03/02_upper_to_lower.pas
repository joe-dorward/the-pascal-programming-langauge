PROGRAM upper_to_lower(INPUT,OUTPUT);

{ program converts uppercase characters in
  a string into lowercase characters }
 
VAR
  customer_name : STRING[20];
  I : INTEGER;
          
BEGIN  
  WRITE('Enter customer name : ');
  READLN(customer_name);

  FOR I := 1 TO STRLEN(customer_name) DO
    IF (customer_name[I] >= 'A') AND (customer_name[I] <= 'Z') THEN
        customer_name[I] := CHR( ORD(customer_name[I]) + (ORD('a') - ORD('A')) );

  WRITELN(customer_name);
END.   { program upper_to_lower }
