require "gui"

local window = gui.create_window();
antwoord = 0;
a= {};
b= {};
i = 0;
z = 0;

local textbox1 = window: add_text_box();
textbox1.x = 8;
textbox1.y = 8;
textbox1.width = 500;

local label1 = window : add_label();
label1.x = 8;
label1.y = 33;

local button7 = window: add_button();
button7.x = 8;
button7.y = 58;
button7.text = "7";

local button8 = window: add_button();
button8.x = 108;
button8.y = 58;
button8.text = "8";

local button9 = window: add_button();
button9.x = 208;
button9.y = 58;
button9.text = "9";

local buttonOptellen = window: add_button();
buttonOptellen.x = 308;
buttonOptellen.y = 58;
buttonOptellen.text = "+";

local button4 = window: add_button();
button4.x = 8;
button4.y = 108;
button4.text = "4";

local button5 = window: add_button();
button5.x = 108;
button5.y = 108;
button5.text = "5";

local button6 = window: add_button();
button6.x = 208;
button6.y = 108;
button6.text = "6";

local buttonAftrekken = window: add_button();
buttonAftrekken.x = 308;
buttonAftrekken.y = 108;
buttonAftrekken.text = "-";

local button1 = window: add_button();
button1.x = 8;
button1.y = 158;
button1.text = "1";

local button2 = window: add_button();
button2.x = 108;
button2.y = 158;
button2.text = "2";

local button3 = window: add_button();
button3.x = 208;
button3.y = 158;
button3.text = "3";

local buttonKeer = window: add_button();
buttonKeer.x = 308;
buttonKeer.y = 158;
buttonKeer.text = "x";

local buttonReset = window: add_button();
buttonReset.x = 8;
buttonReset.y = 208;
buttonReset.text = "c";

local button0 = window: add_button();
button0.x = 108;
button0.y = 208;
button0.text = "0";

local buttonBereken = window: add_button();
buttonBereken.x = 208;
buttonBereken.y = 208;
buttonBereken.text = "=";

local buttonDelen = window: add_button();
buttonDelen.x = 308;
buttonDelen.y = 208;
buttonDelen.text = "/";

  function button0: on_click();
    textbox1.text = textbox1.text .. "0";
  end;

  function button1: on_click();
    textbox1.text = textbox1.text .. "1";
  end;

  function button2: on_click();
    textbox1.text = textbox1.text .. "2";
  end;

  function button3: on_click();
    textbox1.text = textbox1.text .. "3";
  end;
  
  function button4: on_click();
    textbox1.text = textbox1.text .. "4";
  end;

  function button5: on_click();
    textbox1.text = textbox1.text .. "5";
  end;

  function button6: on_click();
    textbox1.text = textbox1.text .. "6";
  end;

  function button7: on_click();
    textbox1.text = textbox1.text .. "7";
  end;

  function button8: on_click();
    textbox1.text = textbox1.text .. "8";
  end;

  function button9: on_click();
    textbox1.text = textbox1.text .. "9";
  end;
  
  function buttonOptellen: on_click();
    label1.text = "";
    a[i] = tonumber(textbox1.text);
    b[z] = "+";
    z = z + 1;
    i = i + 1;
    textbox1.text = ""; 
    label1.text = "+";
    
  end;

  function buttonAftrekken: on_click();
    label1.text = "";
    a[i] = tonumber(textbox1.text);
    b[z] = "-";
    z = z + 1;
    i = i + 1;
    textbox1.text = "";
    label1.text = "-";
   
  end;
  
  function buttonKeer: on_click();
    label1.text = "";
    a[i] = tonumber(textbox1.text);
    b[z] = "*";
    z = z + 1;
    i = i + 1;
    textbox1.text = "";
    label1.text = "*";
  end;
  
  function buttonDelen: on_click();
    label1.text = "";
    a[i] = tonumber(textbox1.text);
    b[z] = "/";
    z = z + 1;
    i = i + 1;
    textbox1.text = "";
    label1.text = "/";
  end;
  
  function buttonReset: on_click();
    textbox1.text = "";
    label1.text = "";
    i = 0;
    z = 0;
  end;
  
    function buttonBereken: on_click();
      
      a[i] = tonumber(textbox1.text);
      
      i = 0;
      z = 0;
 
      antwoord = a[i];
      i = i + 1;    
      
        while a[i] ~= nil do
        
          if a[i] == nil then
            break;  
          end;  
          
            if b[z] == "+" then
              antwoord = antwoord + a[i];
              i = i + 1;
              z = z + 1;
            end;
            
              if b[z] == "-" then
                antwoord = antwoord - a[i];
                i = i + 1;
                z = z + 1;
              end;
            
                if b[z] == "*" then
                  antwoord = antwoord * a[i];
                  i = i + 1;
                  z = z + 1;
                end;
            
                  if b[z] == "/" then
                    antwoord = antwoord / a[i];
                    i = i + 1;
                    z = z + 1;
                  end;
         
        end;
        
      textbox1.text = antwoord;
    end;


gui.run();