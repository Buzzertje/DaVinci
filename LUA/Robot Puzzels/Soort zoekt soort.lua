require "robot_arm";
robot_arm:load_level("exercise 6");
robot_arm.speed = 0.9; 
x = 1

for i = 1,7  do
  
  robot_arm: move_right();
  
end;

for hoeveelheid = 1,4 do

robot_arm: grab();
color = robot_arm: scan();

if (color == "white") then
  x = 5;
end;

  if (color == "red") then
    x = 6;
  end;

    if (color == "blue") then
      x = 4;
    end;

      if (color == "green") then      
        x = 1;
      end;

  for verplaatsen = 1,x do
    robot_arm: move_left();
  end;
  
  robot_arm:drop();
  
    for terug = 1, x - 1 do
      robot_arm:move_right();
    end;

end;