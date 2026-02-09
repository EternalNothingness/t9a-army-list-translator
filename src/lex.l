%option caseless
%{
// C code external to any function
#include <stdio.h>
%}

%option noyywrap
%%
 /* == High Elves == */
Highborn\ Elves printf("Hochgeborene Elfen");
 /* -- Army Model Rules -- */
 /* Armoury */
Dragonforged\ Armour printf("Drachenfeuerruestung");
 /* -- Honours -- */
Master\ of\ Canreig\ Tower\ (\(High\ Prince\ must\ gain\ 3\ additional\ Learned\ Spells\))? printf("Meister von Turm Canreig");

 /* -- Special Items -- */
Sliver\ of\ the\ Blazing\ Dawn printf("Splitter der gleissenden Morgenroete");
Diadem\ of\ Protection printf("Diadem des Schutzes");

 /* -- Units -- */
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
Warden's\ Bond printf("Verbundenheit des Waechters");
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
Pyromancy printf("Pyromantie");
Destiny\'s\ Call printf("Ruf des Schicksals");
Aether\ Icon printf("Aether-Ikone");

. printf("%s", yytext);
%%

// Auxiliary routines (optional)
int main(int argc, char **argv) {
  yylex();
  return 0;
}
