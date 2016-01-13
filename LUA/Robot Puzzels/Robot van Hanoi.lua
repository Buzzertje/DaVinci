require "robot_arm";
robot_arm:random_level(4);
robot_arm.speed = 0.99; 
counterLinks = 0;
color = "";

while (color ~= nil) do
  
  robot_arm:grab();
  
  Answer = robot_arm: scan();
  
    if Answer == nil then  
      break;
    end;
  
  robot_arm:move_right();
  robot_arm:drop();
  robot_arm:move_left();
  
  counterLinks = counterLinks + 1;
  
end;

for i = 1,3 do
  robot_arm:move_right();
end;



while (color ~= nil) do
  
  robot_arm:grab();
  Answer = robot_arm: scan();
  
    if Answer == nil then  
      break;
    end;
   
    for a = 1,3 do
      robot_arm:move_left();
    end;  
    
    robot_arm:drop();
    
    for b = 1,3 do
      robot_arm:move_right();
    end;
end;

for c = 1,2 do
  robot_arm:move_left();
end;

for linksVerplaatsen = 1, counterLinks do
  
  robot_arm:grab();
  
  for d = 1,2 do
    robot_arm:move_right();
  end;
  
  robot_arm:drop();
  
    for e = 1,2 do
      robot_arm:move_left();
    end
end;
