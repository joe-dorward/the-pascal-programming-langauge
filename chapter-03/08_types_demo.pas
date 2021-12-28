PROGRAM types_demo(INPUT,OUTPUT);

{ a program which demonstrates the use of the reserved word type }

CONST
  SIZE = 50;

TYPE
  A_NAME = STRING[SIZE DIV 2];
  AN_ADDRESS = STRING[SIZE];
  AN_ACCOUNT_NUMBER = INTEGER;
  A_BALANCE = REAL;

VAR
  customer_name : A_NAME;
  customer_address : AN_ADDRESS;
  customer_account_number : AN_ACCOUNT_NUMBER;
  customer_balance : A_BALANCE;

BEGIN
  WRITE('Enter the customer''s name : ');
  READLN(customer_name);
  WRITE('Enter the customer''s address : ');
  READLN(customer_address);
  WRITE('Enter the customer''s account number : ');
  READLN(customer_account_number);
  WRITE('Enter customer''s account balance : ');
  READLN(customer_balance);

  WRITELN;
  WRITE('The Cotton Bank of Scotland,');
  WRITELN(' Customer Statement');
  WRITELN('-----------------------');
  WRITELN('------------------------');
  WRITE('Name : ',customer_name,' | Account Number : ');
  WRITELN(customer_account_number);
  WRITELN('Address : ',customer_address);
  WRITE('Has an account balance of : ś ');
  WRITELN(customer_balance:6:2);
  WRITELN('-----------------------');
  WRITELN('------------------------');      
END.   { program types_demo }
