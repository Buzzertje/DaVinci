print ("Inschrijvingsgegevens");
print ("Hoeveel mannen komen er op het feest?");
AantalMannen = tonumber(io.read());
print ("Hoeveel vrouwen komen er op het feest?");
AantalVrouwen = tonumber(io.read());
print ("Wat is de dorstfactor?");
Dorstfactor = tonumber(io.read());

print ("Hoeveel liters in 1 fust?");
FustLiters = tonumber(io.read());

BierPerMan = 2.3;
BierPerVrouw = 1.4;

TotaalLiterBier = (AantalMannen * BierPerMan) + (AantalVrouwen * BierPerVrouw);

AantalFustenBier = math.ceil(TotaalLiterBier / FustLiters);

TotaalLiterBier = TotaalLiterBier * Dorstfactor;

ToilettenMensen = math.ceil((AantalMannen + AantalVrouwen) / 12);
ToilettenBier = math.ceil(TotaalLiterBier / 15);

TotaalToiletten = math.max(ToilettenMensen, ToilettenBier);

print ("Totaal te bestellen bier is : " .. TotaalLiterBier .. " liter. ");

print ("Totaal te bestellen fusten : " .. AantalFustenBier);

print ("Toiletten op basis van aantal mensen : " .. ToilettenMensen);

print ("Toiletten op basis van de hoeveelheid bier : " .. ToilettenBier);

print ("Het totaal aantal te bestellen toilleten : " .. TotaalToiletten);