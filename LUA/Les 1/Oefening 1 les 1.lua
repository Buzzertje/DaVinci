require "robot_arm";
robot_arm:load_level("exercise 2");

--stap

robot_arm: grab();
 robot_arm: move_right();
   robot_arm: move_right();
     robot_arm: move_right();
       robot_arm: move_right();
         robot_arm: move_right();
           robot_arm: move_right();
             robot_arm: move_right();
               robot_arm: move_right();
                 robot_arm: move_right();
                  robot_arm: drop();
          
robot_arm: move_left();
  robot_arm: move_left();
    robot_arm: move_left();
      robot_arm: move_left();
        robot_arm: move_left();

robot_arm: grab();  
  robot_arm: move_right();
    robot_arm: move_right();
      robot_arm: move_right();  
        robot_arm: move_right();
          robot_arm: move_right();
            robot_arm: drop();
            
robot_arm: move_left();
  robot_arm: move_left();
    robot_arm: grab();
      robot_arm: move_right();
        robot_arm: move_right();
          robot_arm: drop();