require "gui";
window = gui.create_window();
window.title = "Box count";
window.height = 100;
window.width = 200;
number = 1;

buttonO = window:add_button();
buttonO.x = 15;
buttonO.y = 15;
buttonO.width = 125;
buttonO.text = "Open dialog box"

function buttonO:on_click()
  window2 = gui.create_window();
  window2.title = "Diaglog Box #" .. number;
  window2.height = 200;
  window2.width = 300;
  
  number = number + 1;
end;

gui.run();