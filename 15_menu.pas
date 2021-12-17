PROGRAM menu(INPUT,OUTPUT);

{ a short menu demonstration program }             
            
VAR 
  choice : INTEGER;
            
BEGIN 
  REPEAT
    WRITELN('To exit press                  : 0');  
    WRITELN('To choose first option, enter  : 1');
    WRITELN('To choose second option, enter : 2');
    WRITELN('To choose third option, enter  : 3');
    WRITELN('To choose fourth option, enter : 4');
    WRITELN('To choose fifth option, enter  : 5');
    WRITE('Enter choice : ');
    READLN(choice); 
    WRITELN;

    IF (choice < 6) AND (choice > -1) THEN
      BEGIN
        IF choice = 1 THEN 
          WRITELN('You chose option 1')  
        ELSE 
          IF choice = 2 THEN 
            WRITELN('You chose option 2')
          ELSE 
            IF choice = 3 THEN 
              WRITELN('You chose option 3')
            ELSE 
              IF choice = 4 THEN 
                WRITELN('You chose option 4')
              ELSE 
                IF choice = 5 THEN 
                  WRITELN('You chose option 5');
      END 

    ELSE 
      WRITELN('Option "',choice:0,'" is out of range');
      WRITELN;
  UNTIL (choice = 0);  { exit loop condition }

  WRITELN('* Quitting *');
  WRITELN;
END.  { program menu }
