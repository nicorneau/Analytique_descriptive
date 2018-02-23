// Prenoms et noms :
// Nicolas Corneau-Tremblay
// Mathieu Laflamme
// Matricules :
// 111 024 439
//
// Réservé pour la correction
// a)
// b)
// c)
// d)
// e)
// f)
// g)
// indentations :
// note finale : /100

public class travail1_corneau_laflamme{

   public static void main(String[] args){

      	
      	//code pour appeler la fonction d)
		double a = 2.6, b = 3.6, c = 7.6;
				
		prod_ppa(a, b, c);
				
		//code pour appeler la fonction e)
		double n1 = 13, n2 = 27, n3 = 53, n4 = 28;

		System.out.println(max_val(n1, n2, n3, n4));

		//code pour appeler la fonction f)
		int nf = 2;
		
		question_f(nf);

		//code pour appeler la fonction g)
		int g_n = 10;
		
		Collatz(g_n);
		
		//PARTIE B
      
   }
   	
   	//Développement de a)
   	/*
   	987 : 
   	987 / 2 = 493 reste 1
   	493 / 2 = 246 reste 1
   	246 / 2 = 123 reste 0
   	123 / 2 = 61 reste 1
   	61 / 2 = 30 reste 1
   	30 / 2 = 15 reste 0
   	15 / 2 = 7 reste 1
   	7 / 2 = 3 reste 1
   	3 / 2 = 1 reste 1
   	1 / 2 = 0 reste 1
   	représentation binaire : 11 1101 1011
   	
   	234 :
   	234 / 2 = 117 reste 0
   	117 / 2 = 58 reste 1
   	58 / 2 = 29 reste 0
   	29 / 2 = 14 reste 1
   	14 / 2 = 7 reste 0
   	7 / 2 = 3 reste 1
   	3 / 2 = 1 reste 1
   	1 / 2 = 0 reste 1
   	représentation binaire : 0101 0111
   	*/

	//Développement de b)
	/*
	Addition:
	1011 0111
	1101 0101
	= 1 1000 1100
	
	ou logique
	1011 0111
	1101 0101
	= 1111 0111
	
	et logique
	1011 0111
	1101 0101
	= 1001 0101
	*/

	//Explication de c)
	/*
	Il existe deux type de problèmes potentiels qu’un programmeur peut faire face en
	effectuant des opérations arithmétiques : un débordement (overflow) et un
	souspassement (underflow).
	
	Un débordement survient lorsque le type d'une variable contient trop peu de bits pour
	contenir le nombre qui lui est fourni. En d'autres mots, la quantité de stockage
	permise par le type de la variable est trop restrictive pour le nombre que l'on tente
	d'assigner à celle-ci.
	
	Un souspassement survient lorsqu'un très petit nombre est ajouté ou soustrait à un
	très grand nombre. Puisque la précision de l'ordinateur est limitée, l'espace attribué
	à une variable lorsque celle-ci stocke un très grand nombre est consacré aux chiffres
	avant la virgule. Dans le cas d'un très petit nombre, l'espace de stockage est plutôt
	consacré aux chiffres après la virgule. Puisque ces chiffres après la virgule sont
	ignorés dnas le gars du très grand nombre, ajouter une soustraire un très petit nombre
	à celui-ci ne changera pas sa valeur, puisqu'aucune espace n'est consacré à de si
	petits chiffres dans son stockage.
	 
	*/


	//Fonction pour le numéro d)
	
	// Fonction calculant le plancher d'un nombre
	public static int floor(double number){
	
		if((number % 1) == 0){
			return (int)number;
		}
		if(number >= 0){
			return (int)(number - (number % 1));
		}
		else{
			return (int)(number - (1 + (number % 1)));
		}
	}
	// Fonction calculant le plafond d'un nombre
	public static int ceiling(double number) {
		
		if((number % 1) == 0){
			return (int)number;
		}
		if(number >= 0){
			return (int)(number + (1 - (number % 1)));
		}
		else{
			return (int)(number - (number % 1));
		}
	}
	
	// Fonction calculant l'arrondi d'un nombre
	public static int round(double number) {
		
		if(number >= 0){
			if((number % 1) >= 0.5){
				return ceiling(number);
			}
			else{
				return floor(number);
			}
		}
		else{
			if(-1 * (number % 1) < 0.5){
				return ceiling(number);
			}
			else{
				return floor(number);
			}
		}
	}
	
	// Fonction calculant plafond(a)*plancher(b)*arrondi(c)
	public static int prod_ppa(double number1, double number2, double number3){
		int output;
		
		output = (int)(ceiling(number1) * floor(number2) * round(number3));
		
		System.out.println("Plafond de " + number1 + " : " + ceiling(number1));
		System.out.println("Plancher de " + number2 + " : " + floor(number2));
		System.out.println("Arrondi de " + number3 + " : " + round(number3));
		System.out.println("Résultat : " + output + "\n");
		
		return output;
	}
	
	//Fonction pour le numéro e)
	
	// Fonction retournant le maximum de quatre valeurs
	public static double max_val(double number1, double number2,
								 double number3, double number4){
		double output = number1;
		
		if(number2 > output){
			output = number2;
		}
		if(number3 > output){
			output = number3;
		}
		if(number4 > output){
			output = number4;
		}
		
		return output;
	}

	//Fonction pour le numéro f)
	
	public static void question_f(int number){
		float output = 0;
		
		for(int i = 1; i <= number; i++){
			output += (Math.pow(0.9995, i) * Math.sqrt(i) / (2 * i + 1));
		}
		
		System.out.println(output);
	}
	

	//Fonction pour le numéro g)
	
	// Fonction permettant d'effectuer l'algorithme de Collatz
	public static void Collatz(int number){
		int temp = number;
		
		while(temp > 1){
			if((temp % 2) == 0){
				temp = temp / 2;
			}
			else{
				temp = 3 * temp + 1;
			}
			
			System.out.println(temp);
		}	
	}
   
}

