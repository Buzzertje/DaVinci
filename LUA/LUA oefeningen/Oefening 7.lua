require "gui";
window = gui.create_window();
window.title = "Get the picture";
window.height = 200;
window.width = 350;

label1 = window:add_label()
label1.width = 350
label1.height = 200;


menu = window.menu_bar: add_menu("Text");
original = menu: add_item("Open");

function original: on_select()
  
  dialog = window:create_file_dialog()

  if dialog:open() then
      file = io.open(dialog.file_name)
      image = window:add_image();
      image = io.open(dialog.file_name)
      
      label1 = image.file_name;
      file:close();
  end;
  
end;

gui.run();

