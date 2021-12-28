PROGRAM random_card(INPUT,OUTPUT);

{ this program uses enumerated types as subscripts for an array and allows the user to almost
  select cards randomly. It is meant more as a demonstration program of how to declare arrays 
  with enumerated types than a really good random card generating program }

TYPE
  CARD = (ACE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,TEN,JACK,QUEEN,KING);

  SUIT = (SPADES,CLUBS,HEARTS,DIAMONDS);

  CARD_ARRAY = ARRAY[ACE..KING,SPADES..DIAMONDS] OF INTEGER;

VAR
  pack_of_cards : CARD_ARRAY;
  I : CARD;
  J : SUIT;
  key,
  choice : CHAR;

BEGIN
  FOR I := ACE TO KING DO
    FOR J := SPADES TO DIAMONDS DO
      pack_of_cards[I,J] := 0;

  WRITELN('Hold down <return> or enter the @ ');
  WRITE('Character to choose');
  READLN(key);

  I := ace;
  J := diamonds;
  REPEAT
    WHILE (key <> '@') DO
      BEGIN
        IF (I = KING) THEN 
          I := ACE
        ELSE
          I := SUCC(I);
        IF (J = diamonds) THEN 
          J := spades
        ELSE 
          J := SUCC(J);
        READLN(key);
      END;

    pack_of_cards[I,J] := pack_of_cards[I,J] + 1;
    WRITE('Another choice : y/n ');
    READLN(choice);
    key := '0';
  UNTIL (choice = 'n');

  FOR I := ACE TO KING DO
         FOR J := SPADES TO DIAMONDS DO
           IF (pack_of_cards[I,J] > 0) THEN
              BEGIN
                WRITE('The card ',I,' of ',J,' was chosen : ');
                WRITELN(pack_of_cards[I,J],' times');
              END;
END.   { program random_card }
