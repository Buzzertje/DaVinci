require "robot_arm";
robot_arm:load_level("exercise 3");
robot_arm.speed = 0.9;
stappen = 2;

for i = 1, 4 do
  
robot_arm:grab();

for heen = 1, stappen do
  robot_arm: move_right();
end;

robot_arm:drop();

for terug = 1, stappen do
  robot_arm: move_left();
  
end;

stappen = stappen + 2;

end;
  
  
  