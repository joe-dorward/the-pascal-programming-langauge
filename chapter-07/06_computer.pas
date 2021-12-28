PROGRAM computer(INPUT,OUTPUT);

TYPE
  PRINTER_CONNECTOR = STRING[8];   { each character requires 8 bits }
  MOUSE_CONNECTOR = CHAR;          { l for left button, r for right }
  MONITOR_CONNECTOR = STRING[11];  { for colours red, green, blue }
  MAINS_CONNECTOR = STRING[5];     { live, earth, ground }
  KEYBOARD_CONNECTOR = STRING[8];  { each character requires 8 bits } 

VAR
  printer_plug : PRINTER_CONNECTOR;
  mouse_plug : MOUSE_CONNECTOR;
  monitor_plug : MONITOR_CONNECTOR;
  mains_plug : MAINS_CONNECTOR;
  keyboard_plug : KEYBOARD_CONNECTOR;

{ ----------------------------------------------------------------- }
PROCEDURE box(VAR printer_socket : PRINTER_CONNECTOR;   { in/out }
                  mouse_socket : MOUSE_CONNECTOR;       { in }
              VAR monitor_socket : MONITOR_CONNECTOR;   { out }
              VAR mains_socket : MAINS_CONNECTOR;       { in/out }
              VAR keyboard : KEYBOARD_CONNECTOR);       { in }

{ this procedure does nothing but demonstrate how to declare a parameter list }

BEGIN
  WRITELN('Procedure "box" does nothing too');
END;   { procedure box }
{ ----------------------------------------------------------------- }
BEGIN                                    {   MAIN   PROGRAM   }
   box(printer_plug,   { call of procedure box }
       mouse_plug,
       monitor_plug,
       mains_plug,
       keyboard_plug);  

END.   { program computer }
