require "robot_arm";
robot_arm:load_level("exercise 12");
robot_arm.speed = 0.9;
x = 9;


for i = 1, 9 do 

robot_arm: grab();
  color = robot_arm: scan();
 
      if color == "red" then
        
        for a = 1,x do
          robot_arm: move_right();
          
        end;
         
          robot_arm: drop();
          
          for b = 1, x - 1 do
            robot_arm: move_left();
            end;
        
        
            else 
        
              robot_arm: drop();
              robot_arm: move_right();
      end;
      
      x = x- 1;
 end;