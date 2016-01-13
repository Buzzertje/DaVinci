require "gui";
window = gui.create_window();
window.title = "Get the picture";
window.height = 200;
window.width = 350;

timer = gui: create_timer()
timer.interval = 1;
timer:start();

label1 = window:add_label();
label1.height = 200;
label1.width = 350;

counter = 6;



function timer:on_tick()
  
  counter = counter - 1;
  text = counter;
  
  if counter == -1 then
    text = "exit"
  end;
  
  if counter == 0 then
    text = "Farewell";
  end;

  label1.text = tostring(text);
  
  if text == "exit" then
    window: close();
  end;
  
end;



gui.run();