require "gui"
window = gui.create_window();
window.title = "Something to add";

window.width = 250;
window.height = 50;
nummer1 = 0;
nummer2 = 0;
nummer3 = 0;


text_box1 = window:add_text_box();
text_box1.y = 10;
text_box1.width = 50;

label1 = window: add_label();
label1.text = "+";
label1.y = 10;
label1.x = 60;
label1.width = 20;

text_box2 = window:add_text_box();
text_box2.y = 10;
text_box2.x = 90;
text_box2.width = 50;

label2 = window: add_label();
label2.text = "=";
label2.y = 10;
label2.x = 150;
label2.width = 20;

label3 = window: add_label();
label3.text = "";
label3.y = 10;
label3.x = 180;
label3.width = 50;

  function text_box1:on_text_changed()
    nummer1 = tonumber(text_box1.text);
    calculate();
  end
  
    function text_box2:on_text_changed()
      nummer2 = tonumber(text_box2.text);
      calculate();
    end
    
      function calculate()
       
        if nummer1 == nil then
          nummer1 = 0;
        end;
        
          if nummer2 == nil then
            nummer2 = 0;
          end;
        
            nummer3 = nummer1 + nummer2;
            label3.text = tostring(nummer3);
      end;
  

gui.run();