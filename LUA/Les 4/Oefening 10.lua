require "robot_arm";
robot_arm:load_level("exercise 10");
robot_arm.speed = 0.99;

x = 9;

for move = 1, 5 do
  
  robot_arm: grab();
  
  for blokjesheen = 1, x do
    
    robot_arm: move_right();
    
  end;
  
  robot_arm: drop();
  
  x = x - 1 
  
  for blokjesterug = 1, x do
    
    robot_arm: move_left();
  end;
  
  x = x - 1;
  end;