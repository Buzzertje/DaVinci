require "robot_arm";
robot_arm:load_level("exercise 3");

--stap 1

robot_arm: grab();
  robot_arm: move_right();
    robot_arm: drop();
      robot_arm: move_left();

--stap 2

robot_arm: grab();
  robot_arm: move_right();
    robot_arm: drop();
      robot_arm: move_left();
      
      --stap 3

robot_arm: grab();
  robot_arm: move_right();
    robot_arm: drop();
      robot_arm: move_left();
      
      --stap 4

robot_arm: grab();
  robot_arm: move_right();
    robot_arm: drop();
      robot_arm: move_left();