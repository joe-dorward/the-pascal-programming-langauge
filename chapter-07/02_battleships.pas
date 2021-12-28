PROGRAM battleships(INPUT,OUTPUT);

{ two-dimensional array demonstration program based on the game battleships }

TYPE
  CONDITION = STRING[10];

  SEA_CHART = ARRAY['A'..'J',1..10] OF CONDITION;

VAR
  battle_zone : SEA_CHART;

  second,
  row : CHAR;

  first,
  hits,
  column : INTEGER;

BEGIN
  hits := 0;

  FOR column := 'A' TO 'J' DO   { FOR column 'A' TO column 'J' DO }
    FOR row := 1 TO 10 DO  { FOR row 1 TO row 10 DO }
      battle_zone[row,column] := 'empty';

  { initialise hit coordinates }
  battle_zone['G',2] := 'occupied';  { submarine }
  battle_zone['H',2] := 'occupied';
  battle_zone['J',2] := 'occupied';

  battle_zone['B',3] := 'occupied';  { destroyer }
  battle_zone['C',3] := 'occupied';
  battle_zone['D',3] := 'occupied';  
  battle_zone['E',3] := 'occupied';

  battle_zone['D',5] := 'occupied';  { battleship }
  battle_zone['E',5] := 'occupied';
  battle_zone['F',5] := 'occupied';  
  battle_zone['G',5] := 'occupied';
  battle_zone['H',5] := 'occupied';
  battle_zone['B',7] := 'occupied';  { destroyer }
  battle_zone['C',7] := 'occupied';
  battle_zone['D',7] := 'occupied';  
  battle_zone['E',7] := 'occupied';

  REPEAT
    WRITE('Please enter coordinates : ');
    READLN(first,second);

    IF battle_zone[first,second] = 'occupied' THEN
      BEGIN
        WRITELN('A hit');
        battle_zone[first,second] := 'destroyed';
        hits := hits + 1;
      END

    ELSE 
      IF battle_zone[first,second] = 'destroyed' THEN
        WRITELN('Already destroyed')

      ELSE 
        WRITELN('A miss');

  UNTIL hits = 16;

  WRITELN('Game Over');
END.   { program battleships }
