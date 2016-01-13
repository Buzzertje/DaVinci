print ("Welke programmeertaal is bedacht door Bjarne Stroustrup?")
Antwoord = string.lower(io.read())

 if Antwoord == "c++" then
    print ("Inderdaad")
    
      print ("Wie heeft de computer uitgevonden?");
      Antwoord = string.lower(io.read())
      
      if Antwoord == "charles babbage" or "alan turning" or "konrad zuse" then
        print ("Dat reken ik goed");
        
        print ("In welk jaar is Pac-man op de markt gebracht?");
        Antwoord = tonumber(io.read());
        
          if (Antwoord == 1980) then
            print ("Dat je dat weet");
            
          else if (Antwoord > 1975 and Antwoord < 1980 or Antwoord > 1980 and Antwoord < 1985) then
            print ("Bijna goed, maar toch fout");
            
          else 
            print ("Da's niet eens in de buurt");
            
          end;
          
          end; 
            
            
      else 
        print ("Dat is niet goed, maar het is ook een moeilijke vraag");
      end;
      
    
 else
     print ("Hoe kom je daar nou bij?")
  end