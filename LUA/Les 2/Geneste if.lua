print ("Is het geel?")

Antwoord = string.lower(io.read())

if (Antwoord == "ja") then
  
  print("Kun je erop staan?")
  Antwoord = string.lower(io.read())
  
     if(Antwoord == "ja") then
       print("Het is een kuikentje")
    
        else
          print("Het is de zon")
  
 end;
 
 else
 
 print("Is het groot?")
 
 Antwoord = string.lower(io.read())
   if (Antwoord == "ja") then
     print("Het is een olifant")
     
   else 
     
     print("Het is een muis")
     
     end
end

  