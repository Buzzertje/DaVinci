Verplaatsen = 0;

function answer()
  Kleur = robot_arm:scan();
end;

require "robot_arm";
robot_arm:load_level("exercise 12");
robot_arm.speed = 0.9;

print("Welke kleur moet het zijn?");
GezochteKleur = string.lower(io.read());

for einde = 1, 10 do
  
  robot_arm: move_right();
  
end;


for i = 1,10 do
  
robot_arm: grab();
answer();

  if GezochteKleur == Kleur then
    
    for heen = 1, Verplaatsen do
      
      robot_arm:move_right(); 
    end;
    
    robot_arm:drop();
    
    for terug = 1, Verplaatsen + 1 do
      robot_arm:move_left();
      
      end;
      
    
  else
    
    robot_arm:drop();
    robot_arm:move_left();
    
  end;
  
  Verplaatsen = Verplaatsen + 1;
      
 end;