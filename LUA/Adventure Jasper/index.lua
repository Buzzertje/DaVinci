require "gui";
window = gui.create_window();
window.title = "Adventure";
window.height = 500;
window.width = 1000;
level = 1;
far = false;


-- Inventory label

labelTitle = window:add_label()
labelTitle.y = 270;
labelTitle.x = 850;
labelTitle.text = "Inventory :";

label1 = window:add_label()
label1.y = 290;
label1.x = 800;
label1.text = "";

label2 = window:add_label()
label2.y = 310;
label2.x = 800;
label2.text = "";

label3 = window:add_label()
label3.y = 330;
label3.x = 800;
label3.text = "";

-- Images

local imageWood = window:add_image()
imageWood.file_name = "Adventure Jasper/images/bosKey.jpg"

-- Layout on right side

labelTitle = window:add_label()
labelTitle.y = 10;
labelTitle.x = 850;
labelTitle.text = "Choices :";

buttonC1 = window:add_button();
buttonC1.y = 40;
buttonC1.x = 800;
buttonC1.text = "Choice 1"
buttonC1.height = 50;
buttonC1.width = 150;

buttonC2 = window:add_button();
buttonC2.y = 110;
buttonC2.x = 800;
buttonC2.text = "Choice 2"
buttonC2.height = 50;
buttonC2.width = 150;

buttonC3 = window:add_button();
buttonC3.y = 180;
buttonC3.x = 800;
buttonC3.text = "Choice 3"
buttonC3.height = 50;
buttonC3.width = 150;

-- Buttons level 1

function levelChecker()
     
    if(level == 1) then
        buttonC1.text = "Go into the forest";
        buttonC2.text = "Leave the forest";
        buttonC3.text = "Take the key";
    end;
     
    if(level == 2) then
        buttonC1.text = "Go into the forest";
        buttonC2.text = "Leave the forest";
        buttonC3.text = "";
    end;
    
    if(level == 3) then
        buttonC1.text = "Pick up the chest";
        buttonC2.text = "";
        buttonC3.text = "Go back";  
    end;
    
    if(level == 4) then
        buttonC1.text = "Open the chest";
        buttonC2.text = "";
        buttonC3.text = "Go back";  
    end;
    
    if(level == 5) then
        buttonC1.text = "Follow the path";
        buttonC2.text = "";
        buttonC3.text = "Go back";  
    end;
    
    if(level == 6) then
        buttonC1.text = "Show the gem";
        buttonC2.text = "";
        buttonC3.text = "Go back";  
    end;
    
    if(level == 7) then
        buttonC1.text = "Follow him";
        buttonC2.text = "";
        buttonC3.text = "Go back";  
    end;
    
    if(level == 8) then
        buttonC1.text = "Finish";
        buttonC2.text = "";
        buttonC3.text = "";  
    end;


end;


-- Button functions

function buttonC1:on_click()
  
  -- End game
  
    if (buttonC1.text == "Finish") then
      window:close();
      print("Well done");
    end;
  
  -- Follow gandalf to the finish
  
    if (buttonC1.text == "Follow him") then
        imageWood.file_name = "Adventure Jasper/images/finish.png";
        level = 8;
        levelChecker();
    end;
  
  
  -- Watcher with gem
  
    if(buttonC1.text == "Show the gem" and label3.text == "Gem") then
        imageWood.file_name = "Adventure Jasper/images/watchergem.jpg";
        level = 7;
        levelChecker();
    end;
  
  -- Go to watcher
  
    if(buttonC1.text == "Follow the path" and label3.text == "Gem") then
        imageWood.file_name = "Adventure Jasper/images/watcher.jpg";
        level = 6;
        levelChecker();
    end;
  
  -- Open the chest
  
    if(buttonC1.text == "Open the chest" and label1.text == "Key") then
        imageWood.file_name = "Adventure Jasper/images/level2.jpg";
        level = 5;
        levelChecker();
        label3.text = "Gem";
        far = true;
    end;
  
  -- Pick up chest 
  
    if(buttonC1.text == "Pick up the chest") then
        imageWood.file_name = "Adventure Jasper/images/level2.jpg";
        label2.text = "Chest";
        level = 4;
        levelChecker();
    end;
    
  -- Go to forest with chest
   
    if(buttonC1.text == "Go into the forest" and label2.text == "Chest" and label3.text ~= "Gem") then
        imageWood.file_name = "Adventure Jasper/images/level2.jpg";
        level = 4;
        levelChecker();
    end;
  
  -- At start
  
    if(buttonC1.text == "Go into the forest" and label2.text ~= "Chest" and label3.text ~= "Gem") then
        imageWood.file_name = "Adventure Jasper/images/level2chest.jpg";
        level = 3;
        levelChecker();
    end;
    
  -- You got the 3 items and go on
    
    if(buttonC1.text == "Go into the forest" and label2.text == "Chest" and label3.text == "Gem" and label1.text == "Key") then
        imageWood.file_name = "Adventure Jasper/images/level2.jpg";
        level = 5;
        levelChecker();
    end;
   
   
end;



function buttonC2:on_click()
    if(buttonC2.text == "Leave the forest") then
        print("Bye");
        window:close();
    end;
end;



function buttonC3:on_click()
  
    if(buttonC3.text == "Take the key") then
      level = 2;
      levelChecker();
      label1.text = "Key"
      imageWood.file_name = "Adventure Jasper/images/bos.png"
    end;
    
    if(buttonC3.text == "Go back") then
        
        if(label1.text == "Key") then
          level = 2;
          levelChecker();
        end;
        
        if(label1.text == "") then
          level = 1;
          levelChecker();
        end;
        
        imageWood.file_name = "Adventure Jasper/images/bos.png"
    end;
    
    
    if(buttonC3.text == "Go back" and level == 6) then
        level = 5;
        levelChecker();
    end;
    
    
end

levelChecker();

gui.run();