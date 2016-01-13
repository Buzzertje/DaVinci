print ("Inschrijvingsgegevens");
print ("Hoeveel mannen komen er op het feest?");
AantalMannen = tonumber(io.read());
print ("Hoeveel vrouwen komen er op het feest?");
AantalVrouwen = tonumber(io.read());

BierMannen = 2.3 * AantalMannen;
print ("Aantal mannen : " .. AantalMannen .. ". Te bestellen bier voor de mannen : " .. BierMannen .. "liter.");

BierVrouwen = 1.4 * AantalVrouwen;
print ("Aantal vrouwen: " .. AantalVrouwen .. ". Te bestellen bier voor de vrouwen : " .. BierVrouwen .. "liter.");

TotaalBier = BierMannen + BierVrouwen;

print ("Het totaal te bestellen bier is: " .. TotaalBier .. " liters.");