PROGRAM pegs_and_holes(INPUT,OUTPUT);

{ a demonstration program which shows how important procedure parameter matching is }

TYPE
  SQUARE_SHAPE = STRING[15];
  ROUND_SHAPE = STRING[15];

VAR
  square_peg : SQUARE_SHAPE;   { here is a square peg }
  round_peg : ROUND_SHAPE;   { here is a round peg }

  square_hole : SQUARE_SHAPE;   { here is a square hole }
  round_hole : ROUND_SHAPE;   { here is a round hole }
        
{-------------------------------------------------}
PROCEDURE insert_pegs(VAR square_hole : SQUARE_SHAPE;
                      VAR round_hole : ROUND_SHAPE);

BEGIN
  WRITELN('This procedure does absolutely nothing');
END;  { procedure insert_pegs }
{-------------------------------------------------}
BEGIN                         { MAIN  PROGRAM }
  WRITE('Enter a string : ');
  READLN(square_peg);
  round_peg := square_peg;
  WRITE('round_peg is the same as square_peg ');
  WRITELN(round_peg = square_peg);

  insert_pegs(square_peg,round_peg);
{
  insert_pegs(round_peg,square_peg);
}
  WRITELN('The square peg is ',square_peg);
  WRITELN('The round peg is ',round_peg);
END.  { program pegs_and_holes }
