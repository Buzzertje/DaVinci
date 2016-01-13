print ("Inschrijvingsgegevens");
print ("Hoeveel mannen komen er op het feest?");
AantalMannen = tonumber(io.read());
print ("Hoeveel vrouwen komen er op het feest?");
AantalVrouwen = tonumber(io.read());

BierPerMan = 2.3;
BierPerVrouw = 1.4;

TotaalLiterBier = (AantalMannen * BierPerMan) + (AantalVrouwen * BierPerVrouw);

print ("Totaal te bestellen bier is : " .. TotaalLiterBier .. " liter.");