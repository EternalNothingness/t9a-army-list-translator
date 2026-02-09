%option caseless
%{
// C code external to any function
#include <stdio.h>

#define DEBUG 0

size_t lineno = 1;

/*
Highborn Elves
640 - High Prince, General, Light Armour (Destiny's Call), Spear (Sliver of the Blazing Dawn), Master of Canreig Tower (High Prince must gain 3 additional Learned Spells)
510 - Commander, Griffon, Shield, Battle Standard Bearer, Dragonforged Armour, Great Weapon, Diadem of Protection
230 - Mage, Wizard Adept, Pyromancy
600 - 30 Sea Guard, Musician, Champion, Standard Bearer
371 - 24 Citizen Archers, Musician
175 - 10 Citizen Archers, Musician
632 - 27 Lion Guard, Musician, Champion, Standard Bearer
365 - Phoenix, Frost Phoenix
365 - Phoenix, Frost Phoenix
200 - Sea Guard Reaper
200 - Sea Guard Reaper
200 - Sea Guard Reaper
4488
*/
%}

%option noyywrap
%%
 /* == High Elves == */
Highborn\ Elves printf("Hochgeborene Elfen");
 /* -- army model rules -- */
 /* armoury */
Dragonforged\ Armour printf("Drachenfeuerruestung");
 /* -- honours -- */
Master\ of\ Canreig\ Tower\ (\(High\ Prince\ must\ gain\ 3\ additional\ Learned\ Spells\))? printf("Meister von Turm Canreig");

 /* -- special items -- */
Sliver\ of\ the\ Blazing\ Dawn printf("Splitter der gleissenden Morgenroete");
Diadem\ of\ Protection printf("Diadem des Schutzes");

 /* -- units -- */
 /* Character Models */
High\ Prince printf("Hoher Prinz");
Commander printf("Befehlshaber");
Mage printf("Magier");
 /* Mounts */
Griffon printf("Greif");

 /* Core */
Sea\ Guard printf("Seegarde");
Citizen\ Archers printf("Miliz-Bogenschuetzen");

 /* Elite */
Lion\ Guard printf("Loewengarde");
Phoenix printf("Phoenix");
Frost\ Phoenix printf("Frostphoenix");
Fire\ Phoenix printf("Feuerphoenix");
Sea\ Guard\ Reaper printf("Schnitter der Seegarde");

 /* == Rulebook == */
 /* Model Rules */
 /* Universal */
Battle\ Standard\ Bearer printf("Armeestandartentraeger");
Wizard\ Adept printf("Zauberadept");

 /* Command Group */
Musician printf("Musiker");
Standard\ Bearer printf("Standartentraeger");

 /* Armour */
Light\ Armour printf("leichte Ruestung");
Shield printf("Schild");

 /* Weapons */
Spear printf("Speer");
Great\ Weapon printf("Zweihandwaffe");

 /* == Arcane Compendium == */
Destiny\'s\ Call printf("Ruf des Schicksals");
Pyromancy printf("Pyromantie");

. printf("%s", yytext);
%%

// Auxiliary routines (optional)
int main(int argc, char **argv) {
  yylex();
  return 0;
}
