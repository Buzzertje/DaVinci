require "robot_arm";
robot_arm:load_level("exercise 7");
robot_arm.speed = 0.99;

robot_arm: move_right();

for i = 1, 5 do 
  
  for a = 1, 6 do 
    
    robot_arm: grab();
      robot_arm: move_left();
        robot_arm: drop();
          robot_arm: move_right();
            
  end;
        
            robot_arm: move_right();
              robot_arm:move_right();
        
 end;
      