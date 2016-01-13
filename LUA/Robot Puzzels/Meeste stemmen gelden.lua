require "robot_arm";
robot_arm:load_level("exercise 11");
robot_arm.speed = 0.99; 

blueCounter = 0;
redCounter = 0;
greenCounter = 0;
whiteCounter = 0;
mostColor = "";
x = 9;

for scannen = 1, 9 do
  
  robot_arm:move_right();
  robot_arm:grab();
  color = robot_arm:scan();
  
  if (color == "blue") then
    blueCounter = blueCounter + 1;
  end;
  
  if (color == "red") then
    redCounter = redCounter + 1;
  end;
  
  if (color == "green") then
    greenCounter = greenCounter + 1;
  end;
  
  if (color == "white") then
    whiteCounter = whiteCounter + 1;
  end;
  
  robot_arm:drop();
end;

-- Bepalen van hoogste (blue, red, green, white)

if (blueCounter >= redCounter and blueCounter >= greenCounter and blueCounter >= whiteCounter) then
  mostColor = "blue";
end;

  if (redCounter > blueCounter and redCounter >= greenCounter and redCounter >= whiteCounter) then
    mostColor = "red";
  end;
 
    if (greenCounter > blueCounter and greenCounter > redCounter and greenCounter >= whiteCounter) then
      mostColor = "green";
    end;
 
      if (whiteCounter > blueCounter and whiteCounter > greenCounter and whiteCounter > redCounter) then
        mostColor = "white";
      end;
      

for aantal = 1, 9 do
  robot_arm:grab();
  color = robot_arm:scan();
  
  if (color == mostColor) then
    
    for bringBack = 1, x do
      robot_arm:move_left();
    end;
    
      robot_arm:drop();
      
      for goBack = 1,x - 1 do
        robot_arm:move_right();     
      end;
      
 
    else 
      robot_arm:drop();
      robot_arm:move_left();
      
  end;
  
  x = x - 1;
end;


