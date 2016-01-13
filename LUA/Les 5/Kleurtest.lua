require "robot_arm";
robot_arm:load_level("exercise 3");
robot_arm.speed = 0.99;

robot_arm: grab();
color = robot_arm: scan();
print(color);