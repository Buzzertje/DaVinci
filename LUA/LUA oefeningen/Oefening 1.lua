require "gui";
window = gui.create_window(); 
window.title = "In the mood";

ButtonNumber = 0;

button1 = window:add_button();
button1.x = 100;
button1.y = 50;
button1.text = "Excited";

button2 = window:add_button();
button2.x = 200;
button2.y = 50;
button2.text = "Nervous";

button3 = window:add_button();
button3.x = 300;
button3.y = 50;
button3.text = "Nervous";

function button1: on_click()
  ButtonNumber = 1;
  ChangeColor(); 
end;

function button2: on_click()
  ButtonNumber = 2;
  ChangeColor();
end;

function button3: on_click()
  ButtonNumber = 3;
  ChangeColor();
end;
  
  function ChangeColor()
    
    if (ButtonNumber == 1) then
      window.background_color = {1,0,0}
    end;
  
      if (ButtonNumber == 2) then
          window.background_color = {1,1,0}
      end;
  
        if (ButtonNumber == 3) then
          window.background_color = {0,0,1}
        end;
  
  end;



gui.run();