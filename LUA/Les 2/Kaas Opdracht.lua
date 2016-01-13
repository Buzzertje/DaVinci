print ("Is het geel?");

Antwoord = string.lower(io.read());

if (Antwoord == "ja") then
  
  print ("Zitten er gaten in?");
 Antwoord = string.lower(io.read());
  
    if (Antwoord == "ja") then
    
      print ("Is de kaas belachelijk duur?");
      Antwoord = string.lower(io.read());
    
          if (Antwoord == "ja") then
      
            print ("Emmenthaler");
      
            else 
      
              print ("Leerdammer");
          end;
     
      else 
    
        print("Is de kaas hard als steen?");
        Antwoord = string.lower(io.read());
    
  
    
    if (Antwoord == "ja") then
      
      print ("Parmigiano Reggiano");
      
    else 
      
      print ("Goudse kaas");
  end;
end;

else 

print ("Heeft de kaas blauwe schimmels");
Antwoord = string.lower(io.read());

  if (Antwoord == "ja") then
    
    print ("Heeft de kaas een korst?")
    Antwoord = string.lower(io.read());
    
      if (Antwoord == "ja") then
        
        print ("Bleu de Rochbaron");
        
      else 
        
        print ("Fourm d'Ambert");
      end;
      
    
    
    else
     
      print ("Heeft de kaas een korst?");
      Antwoord = string.lower(io.read());
      
      if (Antwoord == "ja") then
        
        print ("Camembert");
        
      else 
        
        print ("Mozzarella");
          
       end;
       
      end;
   end;

