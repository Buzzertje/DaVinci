print ("Hoeveel fris-drinkers zijn er?");
FrisDrinkers = io.read();

SpaRoodDrinkers = math.ceil(FrisDrinkers * 0.37);

SpaBlauwDrinkers = math.ceil(FrisDrinkers * 0.19);

OrangeDrinkers = math.ceil(FrisDrinkers * 0.12);

OverigeDrinkers = math.ceil(FrisDrinkers * 0.32);

print ("Het aantal spa rood drinkers : " .. SpaRoodDrinkers);

print ("Het aantal spa blauw drinkers : " .. SpaBlauwDrinkers);

print ("Het aantal orange drinkers : " .. OrangeDrinkers);

print ("Het aantal overige drinkers : " .. OverigeDrinkers);

TotaalLiters = (FrisDrinkers * 2.2);

print ("Het totaal aantal liter dat nodig is :" .. TotaalLiters);