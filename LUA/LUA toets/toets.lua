require "robot_arm";
robot_arm:random_level(4);
robot_arm.speed = 0.9;
color = "";

print("Which row has to be moved?");
row = io.read();

for toRow = 1, row - 1 do
  robot_arm: move_right();
end;

while (color ~= nil) do
  
  robot_arm: grab()
  answer = robot_arm:scan();
  
  if (answer == nil) then
    break;
  end
  
    for toRight = 1, 9 - row do
      robot_arm: move_right();
    end;
  
    robot_arm: drop();
  
      for toLeft = 1, 9 - row do
        robot_arm:move_left();
      end;
  
end;