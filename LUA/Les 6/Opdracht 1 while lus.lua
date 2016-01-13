math.randomseed(os.time());
number = math.random(0,10);
found = false;

while found == false do
  
  print("Welk nummer is het ?");
  Answer = tonumber(io.read());
  
  if number == Answer then
    
    print ("Goed gedaan");
    found = true;
    
  else 
    
    print ("Niet goed");
   
  end;

end;