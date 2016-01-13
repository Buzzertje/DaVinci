require "gui"
window = gui.create_window();
window.title = "One way out";
window.height = 500;
window.width = 500;

buttonE = window: add_button();
buttonE.height = window.height;
buttonE.width = window.width;
buttonE.text = "Exit";

function window:on_resize()
  buttonE.height = window.height;
  buttonE.width = window.width;
end;

function buttonE:on_click()
  window:close();
end;

gui.run();