require "gui";
window = gui.create_window();
window.title = "Get the picture";
window.height = 200;
window.width = 350;

image = window: add_image()
image.file_name = "party.jpg";
gui.run()
