require "gui";
local window = gui.create_window();
window.title = "As is the case";
window.width = 150;
window.height = 100;

label1 = window: add_label();
label1.text = "Hallo dit is een test, en dit gebruik ik om te kijken of het menu werkt";
label1.width = 150;
label1.height = 100;

text = label1.text;

menu = window.menu_bar: add_menu("Text");

original = menu: add_item("Original");
big = menu: add_item("Upper case");
small = menu: add_item("Lower case");

function original:on_select()
  label1.text = text;
end;

function big:on_select()
  label1.text = string.upper(label1.text);
end;

function small:on_select()
  label1.text = string.lower(label1.text);
end;


gui.run();