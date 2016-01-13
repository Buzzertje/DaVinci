require "gui"
window = gui.create_window();
window.title = "Man in the middle";
window.height = 500;
window.width = 500;

label1 = window: add_label();
label1.x = 250;
label1.y = 250;
label1.text = "Here I stand!";

function window:on_resize()
  label1.x = window.width / 2;
  label1.y = window.height / 2;
end;

gui.run();