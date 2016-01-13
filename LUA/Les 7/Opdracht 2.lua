require "gui";
window = gui.create_window(); 
window.title = "Ja klikker";

knop1 = window: add_button();
knop1.x = 50;
knop1.y = 50;
knop1.text = "Nee";

knop2 = window: add_button();
knop2.x =200;
knop2.y = 50;
knop2.text = "Nee";

knop3 = window: add_button();
knop3.x = 350;
knop3.y = 50;
knop3.text = "Nee";

knop4 = window: add_button();
knop4.x = 500;
knop4.y = 50;
knop4.text = "Nee";

knopreset = window :add_button();
knopreset.x = 50;
knopreset.y = 300;
knopreset.text = "Reset";

function knop1: on_click();
  
  if (knop1.text == "Nee") then
    knop1.text = "Ja";
    else 
      knop1.text = "Nee";
  end;
  
    if (knop2.text == "Nee") then
      knop2.text = "Ja";
        else 
          knop2.text = "Nee";
    end;
  
      if knop1.text == "Ja" and knop2.text == "Ja" and knop3.text == "Ja" and knop4.text == "Ja" then
        print ("Alles staat op ja!");
  
      end;
  
end;

function knop2: on_click();
  
  if (knop2.text == "Nee") then
    knop2.text = "Ja";
      else 
        knop2.text = "Nee";
  end;
    
    if (knop4.text == "Nee") then
    knop4.text = "Ja";
      else 
        knop4.text = "Nee";
    end;
    
      if knop1.text == "Ja" and knop2.text == "Ja" and knop3.text == "Ja" and knop4.text == "Ja" then
        print ("Alles staat op ja!");
  
      end;
 
end;

function knop3: on_click();
  
  if (knop2.text == "Nee") then
    knop2.text = "Ja";
      else 
        knop2.text = "Nee";
  end;
    
    if (knop3.text == "Nee") then
      knop3.text = "Ja";
        else 
          knop3.text = "Nee";
    end;
    
      if (knop4.text == "Nee") then
        knop4.text = "Ja";
          else 
            knop4.text = "Nee";
      end;
  
        if knop1.text == "Ja" and knop2.text == "Ja" and knop3.text == "Ja" and knop4.text == "Ja" then
          print ("Alles staat op ja!");
  
        end;
end;

function knop4: on_click();
  
  if (knop1.text == "Nee") then
    knop1.text = "Ja";
      else 
        knop1.text = "Nee";
  end;
  
    if (knop2.text == "Nee") then
      knop2.text = "Ja";
        else 
          knop2.text = "Nee";
    end;
    
        if (knop4.text == "Nee") then
          knop4.text = "Ja";
            else 
              knop4.text = "Nee";
        end;
  
          if knop1.text == "Ja" and knop2.text == "Ja" and knop3.text == "Ja" and knop4.text == "Ja" then
            print ("Alles staat op ja!");
  
          end;
end;

function knopreset: on_click();
  
  knop1.text = "Nee";
  knop2.text = "Nee";
  knop3.text = "Nee";
  knop4.text = "Nee";
end;

gui.run();

