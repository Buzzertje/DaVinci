require "gui" -- maak gebruik van de gui bibliotheek
window = gui.create_window(); -- maak een nieuw venster window aan
window.title = "Ja klikker" -- geef de window de naam Ja Klikker

knop1 = window:add_button(); -- maak een nieuwe button met de naam knop1
knop1.x = 50; -- knop1 x-waarde van 50
knop1.y = 50; -- knop1 y-waarde van 50
knop1.text = "Nee" -- knop1 tekst = Nee

gui.run();