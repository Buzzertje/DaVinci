require "robot_arm";
robot_arm:load_level("exercise 9");
robot_arm.speed = 0.99;
for run = 1, 4 do
  for blokjes = 1, run do 
    robot_arm: grab();
  for a = 1,5 do
    robot_arm: move_right();
  end;
   robot_arm: drop();
  for b = 1, 5 do   
    robot_arm: move_left();
   end; 
  end;
  robot_arm: move_right();
end;