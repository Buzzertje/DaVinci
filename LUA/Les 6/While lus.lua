question = false;

while question == false do
  
print ("Wie heeft de computer uitgevonden?");

  Answer = string.lower(io.read());
  
  if Answer == "alan turning" then
    print ("Dat je dat weet. Echt heel goed gedaan.");
    question = true;
    
    else
      print ("Dat antwoord is nit goed. Probeer het nog maar eens.");
      Answer = string.lower(io.read());
    end;
  
end;