     PROGRAM write_numbers(INPUT,OUTPUT);

     {
       This program writes out, in English, any number less than
       2,000 entered at the prompt.
     }
     
     VAR
       I,
       test_number,
       the_number : INTEGER;

     { -------------------------------------------------------- }
     PROCEDURE write_units(units : INTEGER);

     { this procedure writes out the value of the "units" }

     BEGIN
       IF units = 9 THEN
         WRITE('nine')
       ELSE
         IF units = 8 THEN
           WRITE('eight')
         ELSE
           IF units = 7 THEN
             WRITE('seven')
           ELSE
             IF units = 6 THEN
               WRITE('six')
             ELSE
               IF units = 5 THEN
                 WRITE('five')
               ELSE
                 IF units = 4 THEN
                   WRITE('four')
                 ELSE
                   IF units = 3 THEN
                     WRITE('three')
                   ELSE
                     IF units = 2 THEN
                       WRITE('two')
                     ELSE
                       IF units = 1 THEN
                         WRITE('one');
     END;   { procedure write_units }
     { -------------------------------------------------------- }
     PROCEDURE write_tens(VAR tens : INTEGER);

     { this procedure writes out the value of the "tens" }

     BEGIN
       IF tens > 89 THEN
         BEGIN
           WRITE('ninty');
           tens := tens - 90;
         END
       ELSE
         IF tens > 79 THEN
           BEGIN
             WRITE('eighty');
             tens := tens - 80;
           END
         ELSE
           IF tens > 69 THEN
             BEGIN
               WRITE('seventy');
               tens := tens - 70;
             END
           ELSE
             IF tens > 59 THEN
               BEGIN
                 WRITE('sixty');
                 tens := tens - 60;
               END
             ELSE
               IF tens > 49 THEN
                 BEGIN
                   WRITE('fifty');
                   tens := tens - 50;
                 END
               ELSE
                 IF tens > 39 THEN
                   BEGIN
                     WRITE('forty');
                     tens := tens - 40;
                   END
                 ELSE
                   IF tens > 29 THEN
                     BEGIN
                       WRITE('thirty');
                       tens := tens - 30;
                     END
                   ELSE
                     IF tens > 19 THEN
                       BEGIN
                         WRITE('twenty');
                         tens := tens - 20;
                       END
                     ELSE
                       IF tens > 15 THEN
                         BEGIN
                           write_units(tens);
                           write('teen');
                         END;
     END;    { procedure write_tens } 
     { -------------------------------------------------------- }
     PROCEDURE write_high_teens(the_number : INTEGER);

     { this procedure writes out 19 - 16, with a special 
       case for 18 }

     BEGIN
       the_number := the_number - 10;
       write_units(the_number);   { writes out "tens" column }

       { add correct suffix }
       IF (the_number = 8) THEN { write eighteen rather than eightteen }
         WRITE('een')
       ELSE
         write('teen');
     END;   { procedure write_high_teens }
     { -------------------------------------------------------- }
     PROCEDURE write_low_teens(the_number : INTEGER);
 
     { this procedure writes out special cases 15 - 10 }

     BEGIN
       IF (the_number = 15) THEN
         WRITE('fifteen')
       ELSE
         IF (the_number = 14) THEN
           WRITE('fourteen')
         ELSE
           IF (the_number = 13) THEN
             WRITE('thirteen')
           ELSE
             IF (the_number = 12) THEN
                WRITE('twelve')
             ELSE
               IF (the_number = 11) THEN
                 WRITE('eleven')
               ELSE
                 IF (the_number = 10) THEN
                   WRITE('ten');
     END;   { procedure write_low_teens }
     { -------------------------------------------------------- }
     PROCEDURE write_the_number(the_number : INTEGER);
 
     BEGIN
       the_number := the_number MOD 100;
 
       { if "the_number" is greater than 19 }
       IF (the_number > 19) THEN
         BEGIN
           WRITE('and ');
           write_tens(the_number);
           write_units(the_number);
         END
       ELSE
         { if "the_number" 19, 18, 17, 16 }
         IF (the_number < 20) AND (the_number > 15) THEN
            BEGIN
              WRITE('and ');
              write_high_teens(the_number);
            END
         ELSE
           { if "the_number" is 15, 14, 13, 12, 11, 10 }
           IF (the_number < 16) AND (the_number > 9) THEN
             BEGIN
               WRITE('and ');
               write_low_teens(the_number);
             END
           ELSE
             { if "the_number" is less than 9 }
             IF (the_number > 0) THEN
               BEGIN
                 WRITE('and ');
                 write_units(the_number);
               END;
       WRITELN('.');
     END;   { procedure write_the_number }
     { -------------------------------------------------------- }
     BEGIN                                      { MAIN  PROGRAM }
      REPEAT
       WRITE('Enter number, -1 to quit : ');
       READLN(the_number);
       test_number := the_number;

       IF (the_number < 2000) AND (the_number > 999) THEN
         BEGIN
           the_number := the_number - 1000;
           IF (test_number = 1000) THEN
             WRITE('One thousand')
           ELSE
             IF (test_number > 1000) AND (test_number < 1099) THEN
               WRITE('One thousand and ')
             ELSE
               WRITE('One thousand ');
         END;

     { -------------------------------------------------------- }
       IF (the_number < 1000) AND (the_number >= 100) THEN   { 999 - 900 }
         BEGIN
           IF the_number >= 900 THEN
             BEGIN
               IF (the_number = 900) THEN
                 WRITE('Nine hundred')
               ELSE
                 WRITE('Nine hundred ');
               write_the_number(the_number);
             END
           ELSE
             IF the_number >= 800 THEN                       { 899 - 800 } 
               BEGIN
                 IF (the_number = 800) THEN
                   WRITE('Eight hundred')
                 ELSE
                   WRITE('Eight hundred ');
                 write_the_number(the_number);
               END
             ELSE
               IF the_number >= 700 THEN                     { 799 - 700 }
                 BEGIN
                   IF (the_number = 700) THEN
                     WRITE('Seven hundred')
                   ELSE
                     WRITE('Seven hundred ');
                   write_the_number(the_number);
                 END
               ELSE
                 IF the_number >= 600 THEN                   { 699 - 600 }
                   BEGIN
                     IF (the_number = 600) THEN
                       WRITE('Six hundred')
                     ELSE
                       WRITE('Six hundred ');
                     write_the_number(the_number);
                   END
                 ELSE
                   IF the_number >= 500 THEN                 { 599 - 500 }
                     BEGIN
                       IF (the_number = 500) THEN
                         WRITE('Five hundred')
                       ELSE
                         WRITE('Five hundred ');
                       write_the_number(the_number);
                     END
                   ELSE
                     IF the_number >= 400 THEN               { 499 - 400 }
                       BEGIN
                         IF (the_number = 400) THEN
                           WRITE('Four hundred')
                         ELSE
                           WRITE('Four hundred ');
                         write_the_number(the_number);
                       END
                   ELSE

                     IF the_number >= 300 THEN               { 399 - 300 }
                       BEGIN
                         IF (the_number = 300) THEN
                           WRITE('Three hundred') 
                         ELSE
                           WRITE('Three hundred '); 
                         write_the_number(the_number);
                       END  
                     ELSE
                       IF (the_number >= 200) THEN            { 299 - 200 }
                         BEGIN
                           IF (the_number = 200) THEN
                             WRITE('Two hundred') 
                           ELSE
                             WRITE('Two hundred '); 
                           write_the_number(the_number);
                         END  
                       ELSE
                         IF the_number >= 100 THEN            { 199 - 100 }
                           BEGIN
                             IF (the_number = 100) THEN
                               WRITE('One hundred')
                             ELSE
                               WRITE('One hundred ');
                             write_the_number(the_number);
                           END;
          END                                            { end 1999 - 100 }
        ELSE                                             { begin 99 - 0   }
          IF (the_number >= 0) THEN
            BEGIN
              IF (the_number > 19) THEN
                BEGIN
                  write_tens(the_number);
                  write_units(the_number);
                END
              ELSE
                IF (the_number > 15) THEN
                  write_high_teens(the_number)
                ELSE
                  IF (the_number > 9) THEN
                    write_low_teens(the_number)
                  ELSE
                    IF (the_number > 0) THEN
                      write_units(the_number)
                    ELSE
                      IF test_number <> 1000 THEN   { bug fix }
                        WRITE('zero');

              WRITELN('.');
            END; 
      UNTIL the_number = -1;
     END.   { program write_numbers }
