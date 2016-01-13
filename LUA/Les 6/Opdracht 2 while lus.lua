require "robot_arm";
robot_arm: random_level(1);
robot_arm.speed = 0.9;
stappen = 1;
Answer = "green";



while Answer ~= nil do
  
  robot_arm: grab();
  Answer = robot_arm: scan();
  
  print(Answer);
  
    if Answer == nil then
      
      break;
    end;
   

      for heen = 1 , stappen do
        robot_arm: move_right();
    
      end;
  
    
        robot_arm: drop();

          for terug = 1, stappen do
  
            robot_arm: move_left();
          end;
      
    stappen = stappen + 1;  
  
end;


