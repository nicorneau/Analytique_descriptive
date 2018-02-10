////=============////
////===Montage===////
////=============////

///==Periode==///

clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use BVnov08.dta

//Période 1
merge m:1 nomem_encr using WSavr08

tab _merge
drop if _merge!=3
drop _merge

merge m:1 nomem_encr using Hnov08

tab _merge
drop if _merge!=3
drop _merge

gen t=1

drop if nettoink==. | nettoink==-13 | nettoink==-14 | nettoink==-15
drop if cw08a428==.
drop if cw08a429==.

rename geslacht Sexe
rename ch08b002 Age
rename ch08b081 Coeur
rename ch08b082 Pression
rename ch08b083 Cholesterol
rename ch08b085 Diabete
rename ch08b133 Alcool
rename ch08b185 ActPhysique
rename ch08b197 Fruit
rename ch08b200 Viande
rename cw08a001 Emploi
rename cw08a005 Diplome
rename cw08a428 Charge
rename cw08a429 Liberte
rename cw08a431 Support
rename cw08a432 Appreciation

keep Coeur Pression Cholesterol Diabete Alcool ActPhysique Fruit Viande Emploi Age Diplome Charge Liberte Support Appreciation nomem_encr burgstat sted nettoink netinc nettocat t Sexe

save Periode1.dta, replace

//Période 2
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use BVnov09.dta

merge m:1 nomem_encr using WSavr09

tab _merge
drop if _merge!=3
drop _merge

merge m:1 nomem_encr using Hnov09

tab _merge
drop if _merge!=3
drop _merge

gen t=2

drop if nettoink==. | nettoink==-13 | nettoink==-14 | nettoink==-15
drop if cw09b428==.
drop if cw09b429==.

rename geslacht Sexe
rename ch09c002 Age
rename ch09c081 Coeur
rename ch09c082 Pression
rename ch09c083 Cholesterol
rename ch09c085 Diabete
rename ch09c133 Alcool
rename ch09c185 ActPhysique
rename ch09c197 Fruit
rename ch09c200 Viande
rename cw09b001 Emploi
rename cw09b005 Diplome
rename cw09b428 Charge
rename cw09b429 Liberte
rename cw09b431 Support
rename cw09b432 Appreciation

keep Coeur Pression Cholesterol Diabete Alcool ActPhysique Fruit Viande Emploi Age Diplome Charge Liberte Support Appreciation nomem_encr burgstat sted nettoink netinc nettocat t Sexe

save Periode2.dta, replace

//Période 3
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use BVnov10.dta

merge m:1 nomem_encr using WSavr10

tab _merge
drop if _merge!=3
drop _merge

merge m:1 nomem_encr using Hnov10

tab _merge
drop if _merge!=3
drop _merge

gen t=3

drop if nettoink==. | nettoink==-13 | nettoink==-14 | nettoink==-15
drop if cw10c428==.
drop if cw10c429==.

rename geslacht Sexe
rename ch10d002 Age
rename ch10d081 Coeur
rename ch10d082 Pression
rename ch10d083 Cholesterol
rename ch10d085 Diabete
rename ch10d133 Alcool
rename ch10d185 ActPhysique
rename ch10d197 Fruit
rename ch10d200 Viande
rename cw10c001 Emploi 
rename cw10c005 Diplome
rename cw10c428 Charge
rename cw10c429 Liberte
rename cw10c431 Support
rename cw10c432 Appreciation

keep Coeur Pression Cholesterol Diabete Alcool ActPhysique Fruit Viande Emploi Age Diplome Charge Liberte Support Appreciation nomem_encr burgstat sted nettoink netinc nettocat t Sexe


save Periode3.dta, replace

//Période 4
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use BVnov11.dta

merge m:1 nomem_encr using WSavr11

tab _merge
drop if _merge!=3
drop _merge

merge m:1 nomem_encr using Hnov11

tab _merge
drop if _merge!=3
drop _merge

gen t=4

drop if nettoink==. | nettoink==-13 | nettoink==-14 | nettoink==-15
drop if cw11d428==.
drop if cw11d429==.

rename geslacht Sexe
rename ch11e002 Age
rename ch11e081 Coeur
rename ch11e082 Pression
rename ch11e083 Cholesterol
rename ch11e085 Diabete
rename ch11e133 Alcool
rename ch11e185 ActPhysique
rename ch11e197 Fruit
rename ch11e200 Viande
rename cw11d001 Emploi
rename cw11d005 Diplome
rename cw11d428 Charge
rename cw11d429 Liberte
rename cw11d431 Support
rename cw11d432 Appreciation

keep Coeur Pression Cholesterol Diabete Alcool ActPhysique Fruit Viande Emploi Age Diplome Charge Liberte Support Appreciation nomem_encr burgstat sted nettoink netinc nettocat t Sexe

save Periode4.dta, replace

//Période 5
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use BVnov12.dta

merge m:1 nomem_encr using WSavr12

tab _merge
drop if _merge!=3
drop _merge

merge m:1 nomem_encr using Hnov12

tab _merge
drop if _merge!=3
drop _merge

gen t=5

drop if nettoink==. | nettoink==-13 | nettoink==-14 | nettoink==-15
drop if cw12e428==.
drop if cw12e429==.

rename geslacht Sexe
rename ch12f002 Age
rename ch12f081 Coeur
rename ch12f082 Pression
rename ch12f083 Cholesterol
rename ch12f085 Diabete
rename ch12f133 Alcool
rename ch12f185 ActPhysique
rename ch12f197 Fruit
rename ch12f200 Viande
rename cw12e001 Emploi
rename cw12e005 Diplome
rename cw12e428 Charge
rename cw12e429 Liberte
rename cw12e431 Support
rename cw12e432 Appreciation

keep Coeur Pression Cholesterol Diabete Alcool ActPhysique Fruit Viande Emploi Age Diplome Charge Liberte Support Appreciation nomem_encr burgstat sted nettoink netinc nettocat t Sexe

save Periode5.dta, replace

//Période 6
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use BVnov13.dta

merge m:1 nomem_encr using WSavr13

tab _merge
drop if _merge!=3
drop _merge

merge m:1 nomem_encr using Hnov13

tab _merge
drop if _merge!=3
drop _merge

gen t=6

drop if nettoink==. | nettoink==-13 | nettoink==-14 | nettoink==-15
drop if cw13f428==.
drop if cw13f429==.

rename geslacht Sexe
rename ch13g002 Age
rename ch13g081 Coeur
rename ch13g082 Pression
rename ch13g083 Cholesterol
rename ch13g085 Diabete
rename ch13g133 Alcool
rename ch13g185 ActPhysique
rename ch13g197 Fruit
rename ch13g200 Viande
rename cw13f001 Emploi
rename cw13f005 Diplome
rename cw13f428 Charge
rename cw13f429 Liberte
rename cw13f431 Support
rename cw13f432 Appreciation

keep Coeur Pression Cholesterol Diabete Alcool ActPhysique Fruit Viande Emploi Age Diplome Charge Liberte Support Appreciation nomem_encr burgstat sted nettoink netinc nettocat t Sexe


save Periode6.dta, replace

//Lags
//1
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Hnov07

rename ch07a081 CoeurLag
rename ch07a082 PresLag
rename ch07a083 CholLag
rename ch07a085 DiabLag

save Lag1.dta, replace


merge m:1 nomem_encr using Periode1

tab _merge
drop if _merge!=3
drop _merge

save Per1.dta, replace

//2
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Hnov08

rename ch08b081 CoeurLag
rename ch08b082 PresLag
rename ch08b083 CholLag
rename ch08b085 DiabLag

save Lag2.dta, replace


merge m:1 nomem_encr using Periode2

tab _merge
drop if _merge!=3
drop _merge

save Per2.dta, replace

//3
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Hnov09

rename ch09c081 CoeurLag
rename ch09c082 PresLag
rename ch09c083 CholLag
rename ch09c085 DiabLag

save Lag3.dta, replace


merge m:1 nomem_encr using Periode3

tab _merge
drop if _merge!=3
drop _merge

save Per3.dta, replace

//4
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Hnov10

rename ch10d081 CoeurLag
rename ch10d082 PresLag
rename ch10d083 CholLag
rename ch10d085 DiabLag

save Lag4.dta, replace


merge m:1 nomem_encr using Periode4

tab _merge
drop if _merge!=3
drop _merge

save Per4.dta, replace

//5
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Hnov11

rename ch11e081 CoeurLag
rename ch11e082 PresLag
rename ch11e083 CholLag
rename ch11e085 DiabLag

save Lag5.dta, replace


merge m:1 nomem_encr using Periode5

tab _merge
drop if _merge!=3
drop _merge

save Per5.dta, replace

//6
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Hnov12

rename ch12f081 CoeurLag
rename ch12f082 PresLag
rename ch12f083 CholLag
rename ch12f085 DiabLag

save Lag6.dta, replace


merge m:1 nomem_encr using Periode6

tab _merge
drop if _merge!=3
drop _merge

save Per6.dta, replace

//Panel
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Per1.dta

append using Per2.dta

append using Per3.dta

append using Per4.dta

append using Per5.dta

append using Per6.dta


////Retrait des individus qui ne sont pas présents à toutes les périodes
sort nomem_encr t
by nomem_encr : egen sum=sum(t)
tab sum
drop if sum!=21
drop sum

////Introduction des données sur les antécédents de santé////
*merge m:1 nomem_encr using HealthPreventionAout10

*tab _merge
*keep if _merge == 3
*drop _merge

*rename dl10a059 PresFam
*rename dl10a060 CholFam
*rename dl10a061 DiabFam

keep Coeur Pression Alcool ActPhysique Fruit Viande Emploi Age Diplome Charge Liberte Support nomem_encr burgstat sted nettoink t CoeurLag PresLag Sexe

////Retrait des individus n'ayant pas travaillé l'ensemble de la période
sort nomem_encr t
by nomem_encr : egen sum=sum(Emploi)
tab sum
drop if sum!=6
drop sum Emploi

save Panel.dta, replace


////=================////
////===Arrangement===////
////=================////
clear all
cd "C:\Users\Utilisateur\Desktop\ULaval\Maitrise\Microéconométrie\Travail long\En panel"
use Panel.dta

label variable Coeur "A eu un problème de coeur déclaré par un médecin dans la dernière année"
label variable CoeurLag "A eu un problème de coeur déclaré par un médecin dans la dernière année (Retardée)"
label variable Pression "A eu un problème de haute pression déclaré par un médecin dans la dernière année"
label variable PresLag "A eu un problème de haute pression déclaré par un médecin dans la dernière année (Retardée)"

recode Sexe (2=0)
rename Sexe Homme
label variable Homme "De sexe masculin"

gen AlcoolE = Alcool==1 | Alcool==2 | Alcool==3
label variable AlcoolE "Consomme de l'alcool trois à quatre fois semaine ou plus"
gen AlcoolM = Alcool==4 | Alcool==5
label variable AlcoolM "Consomme de l'alcool entre une fois par mois et une fois par semaine"
drop Alcool

label variable ActPhysique "Nombre de jour dans la dernière semaine où l'individu a fait de l'activité physique soutenue"

gen FruitE = Fruit==5 | Fruit==6
label variable FruitE "Consomme des fruits 5 fois par semaine ou plus"
gen FruitM = Fruit==3 | Fruit==4
label variable FruitM "Consomme des fruits 1 à 4 fois par semaine"
drop Fruit

gen ViandeE = Viande==5 | Viande==6
label variable ViandeE "Consomme de la viande 5 fois par semaine ou plus"
gen ViandeM = Viande==3 | Viande==4
label variable ViandeM "Consomme de la viande 1 à 4 fois par semaine"
drop Viande

label variable Age "Âge de l'individu"

gen Université=1 if Diplome==20 | Diplome==21 | Diplome==22 | Diplome==23 | Diplome==24 | Diplome==25 | Diplome==26
recode Université (.=0)
label variable Université "Plus haut diplome : universitaire"
gen Professionnel=1 if Diplome==15 | Diplome==16 | Diplome==17 | Diplome==18 | Diplome==19
recode Professionnel (.=0)
label variable Professionnel "Plus haut diplome : professionel"
gen Secondaire=1 if Diplome==4 | Diplome==5 | Diplome==6 | Diplome==7 | Diplome==8 | Diplome==9 | Diplome==10 | Diplome==11 | Diplome==12 | Diplome==13 | Diplome==14
recode Secondaire (.=0)
label variable Secondaire "Plus haut diplome : secondaire"
drop Diplome

gen Marie = burgstat==1
drop burgstat

gen Urbain = sted==1 | sted==2
label variable Urbain "Vit dans un environnement très ou extrêmement urbain"
drop sted

rename nettoink RevenuNet 
label variable RevenuNet "Revenu net de l'individu"

gen Age2=Age*Age

label variable Charge "A une lourde charge de travail et est sous pression (Plus élevé, plus d'accord)"

label variable Liberte "A peu de liberté dans la décision de comment faire son travail (Plus élevé, plus d'accord)"

label variable Support "Reçoit suffisamment de support dans les situations difficiles (Plus élevé, plus d'accord)"

gen CharLib = Charge*Liberte

////=================////
////===Régressions===////
////=================////

sort nomem_encr t

///Problème de coeur
probit Coeur ActPhysique Age Age2 AlcoolE AlcoolM FruitE FruitM ViandeE ViandeM Homme Marie Secondaire Professionnel Université RevenuNet Urbain CoeurLag Charge Liberte CharLib, cluster(nomem_encr)
*test de classification
estat classification, cutoff(0.5)
*99.45
gen LikeRCoeur = e(ll)
probit Coeur ActPhysique Age Age2 AlcoolE AlcoolM FruitE FruitM ViandeE ViandeM Homme Marie Secondaire Professionnel Université RevenuNet Urbain CoeurLag Charge Liberte CharLib Support, cluster(nomem_encr)
*test de classification
estat classification, cutoff(0.5)
*99.45
gen LikeNRCoeur = e(ll)
gen RatioCoeur=2*(LikeNRCoeur-LikeRCoeur)
tab RatioCoeur
*1.134781
*A 1 degrée de liberté, une khi-deux à 5% à une valeur de 3,8415 , on ne rejete donc pas H0 que les deux modèles
//Liberté sort significative et négative. CharLib sort significative et positive. Charge ne sort pas significative.


///Problème de pression
probit Pression ActPhysique Age Age2 AlcoolE AlcoolM FruitE FruitM ViandeE ViandeM Homme Marie Secondaire Professionnel Université RevenuNet Urbain PresLag Charge Liberte CharLib, cluster(nomem_encr)
*test de classification
estat classification, cutoff(0.5)
*99.45%
gen LikeRPres = e(ll)
probit Pression ActPhysique Age Age2 AlcoolE AlcoolM FruitE FruitM ViandeE ViandeM Homme Marie Secondaire Professionnel Université RevenuNet Urbain PresLag Charge Liberte CharLib Support, cluster(nomem_encr)
*test de classification
estat classification, cutoff(0.5)
*96.59%
gen LikeNRPres = e(ll)
gen RatioPres=2*(LikeNRPres-LikeRPres)
tab RatioPres
*0.0900879
*On ne rejette pas H0
//Charge sort significative et positive lorsqu'elle est seule. 
//Modèle non restraint : Liberté sort significative et négative. CharLib sort significative et positive. Charge ne sort pas significative.


















