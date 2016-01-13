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

SpaRoodLiters = math.ceil(SpaRoodDrinkers * 2.2);

SpaBlauwLiters = math.ceil(SpaBlauwDrinkers * 2.2);

OrangeLiters = math.ceil(OrangeDrinkers * 2.2);

OverigeLiters = math.ceil(OverigeDrinkers * 2.2);

AantalSpaRoodKratten = math.ceil(SpaRoodLiters / 10);
AantalSpaBlauwKratten = math.ceil(SpaBlauwLiters / 10);
AantalOrangeSixpacks = math.ceil(OrangeLiters / 3);
AantalOverigeKratten = math.ceil(OverigeLiters / 15);

print ("Het totaal aantal kratten spa rood dat nodig is :" .. AantalSpaRoodKratten);

print ("Het totaal aantal kratten spa blauw dat nodig is :" .. AantalSpaBlauwKratten);

print ("Het totaal aantal sixpacks jus d'orange dat nodig is :" .. AantalOrangeSixpacks);

print ("Het totaal aantal kratten van overige dat nodig is :" .. AantalOverigeKratten);