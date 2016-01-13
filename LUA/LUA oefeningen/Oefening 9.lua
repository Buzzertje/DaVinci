require "gui";
window = gui.create_window();
window.title = "Window settings";
window.height = 175;
window.width = 310;

  labelTitle = window:add_label()
  labelTitle.y = 10;
  labelTitle.x = 10;
  labelTitle.text = "Title";

  labelLeft = window:add_label()
  labelLeft.y = 35;
  labelLeft.x = 10;
  labelLeft.text = "Left";

  labelTop = window:add_label()
  labelTop.y = 60;
  labelTop.x = 10;
  labelTop.text = "Top";

  labelWidth = window:add_label()
  labelWidth.y = 85;
  labelWidth.x = 10;
  labelWidth.text = "Width";


  labelHeight = window:add_label()
  labelHeight.y = 110;
  labelHeight.x = 10;
  labelHeight.text = "Height";

    textboxTitle = window:add_text_box()
    textboxTitle.y = 10;
    textboxTitle.x = 100;
    textboxTitle.text = "Window settings";
    textboxTitle.width = window.width - 120;
    
    textboxLeft = window:add_text_box()
    textboxLeft.y = 35;
    textboxLeft.x = 100;
    textboxLeft.text = window.x;
    textboxLeft.width = window.width - 120;
    
    textboxTop = window:add_text_box()
    textboxTop.y = 60;
    textboxTop.x = 100;
    textboxTop.text = window.y;
    textboxTop.width = window.width - 120;
    
    textboxWidth = window:add_text_box()
    textboxWidth.y = 85;
    textboxWidth.x = 100;
    textboxWidth.text = window.width;
    textboxWidth.width = window.width - 120;
    
    textboxHeight = window:add_text_box()
    textboxHeight.y = 110;
    textboxHeight.x = 100;
    textboxHeight.text = window.height;
    textboxHeight.width = window.width - 120;
    
    buttonUpdate = window: add_button()
    buttonUpdate.y = 135;
    buttonUpdate.x = 100;
    buttonUpdate.text = "Update";

    update = false

      function window: on_resize()
        
        if update == false then
          textboxWidth.text = window.width;
          textboxHeight.text = window.height;
         
          textboxTitle.width = window.width - 120;
          textboxWidth.width = window.width - 120;
          textboxHeight.width = window.width - 120;
          textboxLeft.width = window.width - 120;
          textboxTop.width = window.width - 120;
        end;
      end;

      function buttonUpdate: on_click()
        update = true
        window.title = textboxTitle.text;
        window.x = tonumber(textboxLeft.text);
        
        window.y = tonumber(textboxTop.text);
        window.width = tonumber(textboxWidth.text);
        window.height = tonumber(textboxHeight.text);
        
        update = false;
        window:on_resize()
      end;
      
      
      function window:on_move()
        if update == false then
          textboxLeft.text = window.x;
          textboxTop.text = window.y;
        end;
      end;
      
      
gui.run();