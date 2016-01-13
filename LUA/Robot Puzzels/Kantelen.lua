require "robot_arm";
robot_arm:load_level("exercise 9");
robot_arm.speed = 0.99; 
weg = 4;
x = 1;
w = 4;

robot_arm:grab();

for blueGone = 1, weg do
  robot_arm:move_right();
end;

robot_arm:drop();

for blueGoneB = 1, weg do
  robot_arm:move_left();
end;

robot_arm:move_right();

for greenFunction = 1,2 do
    
  robot_arm:grab();
    
  for greenGone = 1, weg do
    robot_arm:move_right();
  end;
      
    robot_arm:drop();
    
    for greenGoneB = 1, weg do
      robot_arm:move_left();
    end;
      
 end;    
      
 robot_arm:move_right();
      
for whiteFunction = 1,3 do
  
  robot_arm:grab();
  
  for whiteGone = 1, weg do
    robot_arm:move_right();
  end;
  
    robot_arm:drop();
    
    for whiteGoneB = 1, weg do
      robot_arm:move_left();
    end;
 
end;

robot_arm:move_right();


-- Verplaatsen van rode blokjes

for roodVerplaatsen = 1,3 do
  
  robot_arm: grab();
  
  for roodHeen = 1, x do
    robot_arm:move_left();
  end;
  
  robot_arm:drop();
  
    for roodTerug = 1, x do
      robot_arm:move_right();
    end;
    
    x = x + 1;
  
end;

for naarWit = 1, 3 do
  robot_arm:move_right();
end;


-- Witte blokjes verplaatsen

for witVerplaatsen = 1,3 do
  
  robot_arm:grab();
  
  for witHeen = 1, w do
    robot_arm:move_left();
  end;
  
    robot_arm:drop();
    
    for witTerug = 1, w do
      robot_arm:move_right();
    end;
  
  w = w + 1;
end;

robot_arm:move_left();


-- Groene blokjes verplaatsen

for groenVerplaatsen = 1,2 do
  
  robot_arm: grab();
  
  for roodHeen = 1, x do
    robot_arm:move_left();
  end;
  
  robot_arm:drop();
  
    for roodTerug = 1, x do
      robot_arm:move_right();
    end;
    
    x = x + 1;
  
end;

robot_arm:move_left();


-- Verplaatsen van blauwe blokje

robot_arm:grab();

for blauwHeen = 1, 4 do
  robot_arm:move_left();
end;

robot_arm:drop();

for blauwTerug = 1, 4 do
  robot_arm:move_right();
end;

robot_arm:move_right();
