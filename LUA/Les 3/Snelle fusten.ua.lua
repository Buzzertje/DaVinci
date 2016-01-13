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

print ("Totaal te bestellen bier is : " .. TotaalLiterBier .. " liter. ");

print ("Totaal te bestellen fusten : " .. AantalFustenBier);