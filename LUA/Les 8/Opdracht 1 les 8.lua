require "gui"

local window = gui.create_window();

local label1 = window: add_label();
label1.x = 8;
label1.y = 8;
label1.text = "Eerste getal";

local label2 = window: add_label();
label2.x = 8;
label2.y = 33;
label2.text = "Tweede getal";

local label3 = window: add_label();
label3.x = 8;
label3.y = 58;
label3.text = "Totaal";

local textbox1 = window: add_text_box();
textbox1.x = 108;
textbox1.y = 8;
textbox1.width = 150;
textbox1.text = 0;

local textbox2 = window: add_text_box();
textbox2.x = 108;
textbox2.y = 33;
textbox2.width = 150;
textbox2.text = 0;

local textbox3 = window: add_text_box();
textbox3.x = 108;
textbox3.y = 58;
textbox3.width = 150;
textbox3.text = 0;

local buttonOptellen = window: add_button();
buttonOptellen.x = 8;
buttonOptellen.y = 108
buttonOptellen.text = "Optellen";

local buttonAftrekken = window: add_button();
buttonAftrekken.x = 108;
buttonAftrekken.y = 108;
buttonAftrekken.text = "Aftrekken";

local buttonDelen = window: add_button();
buttonDelen.x = 208;
buttonDelen.y = 108;
buttonDelen.text = "Delen";

local buttonKeer = window: add_button();
buttonKeer.x = 308;
buttonKeer.y = 108;
buttonKeer.text = "Keer";

local buttonReset = window: add_button();
buttonReset.x = 8;
buttonReset.y = 208;
buttonReset.text = "Reset";


function buttonOptellen: on_click();
  
  a = tonumber(textbox1.text);
  b = tonumber(textbox2.text);
  
  c = a + b;
  textbox3.text = c;

end;

  function buttonAftrekken: on_click();
    a = tonumber(textbox1.text);
    b = tonumber(textbox2.text);
  
    c = a - b;
    textbox3.text = c;
    
  end;
  
    function buttonDelen: on_click();
      a = tonumber(textbox1.text);
      b = tonumber(textbox2.text);
  
      c = a / b;

      textbox3.text = c;
    
    end;
  
      function buttonKeer: on_click();
        a = tonumber(textbox1.text);
        b = tonumber(textbox2.text);
  
        c = a * b;

        textbox3.text = c;
    
      end;
        
        function buttonReset: on_click();
          textbox1.text = 0;
          textbox2.text = 0;
          textbox3.text = 0;
          
        end;
    


gui.run();