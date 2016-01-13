require "robot_arm";
robot_arm:load_level("exercise 11");
robot_arm.speed = 0.9;
plek = 9;

for i = 1,9 do
  
robot_arm: move_right();

end;

  for i = 1,9 do
  
  robot_arm: grab();
  color = robot_arm: scan();
 
      if color == "white" and plek == 9 then
        robot_arm: drop();
        robot_arm: move_left();

      else if color == "white" then
  
        robot_arm: move_right();
        robot_arm: drop();
        robot_arm: move_left();
        robot_arm: move_left();

          else 
            robot_arm: drop();
            robot_arm: move_left();

         end;
     end; 
     
        plek = plek - 1;
        
     end;
  


