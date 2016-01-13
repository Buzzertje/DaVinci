print ("Inschrijvingsgegevens");
print ("Hoeveel mannen komen er op het feest?");
AantalMannen = tonumber(io.read());
print ("Hoeveel vrouwen komen er op het feest?");
AantalVrouwen = tonumber(io.read());
print ("Wat is de dorstfactor?");

Dorstfactor = tonumber(io.read());

BierPerMan = 2.3;
BierPerVrouw = 1.4;

TotaalLiterBier = (AantalMannen * BierPerMan) + (AantalVrouwen * BierPerVrouw);

TotaalLiterBier = TotaalLiterBier * Dorstfactor;

print ("Totaal te bestellen bier is : " .. TotaalLiterBier .. " liter. ");