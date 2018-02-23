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

import java.lang.String;

class Patient{
	//Attributs
	private int age;
	private String nom, prenom, operation;
	private double duree;
	private int no_salle = -1;
	
	//Constructeur
	public Patient(int age_pat, String nom_pat, String prenom_pat,
					String operation_pat, double duree_pat){
		age = age_pat;
		nom = nom_pat;
		prenom = prenom_pat;
		operation = operation_pat;
		duree = duree_pat;
	}
	
	//Accesseurs
	public int Get_age(){return age;}
	public String Get_nom(){return nom;}
	public String Get_prenom(){return prenom;}
	public String Get_operation(){return operation;}
	public double Get_duree(){return duree;}
	public int Get_no_salle(){return no_salle;}
	
	//Modificateurs
	public void Set_age(int age_pat){age = age_pat;}
	public void Set_nom(String nom_pat){nom = nom_pat;}
	public void Set_prenom(String prenom_pat){prenom = prenom_pat;}
	public void Set_operation(String operation_pat){operation = operation_pat;}
	public void Set_duree(double duree_pat){duree = duree_pat;}
	public void Set_no_salle(int no_salle_pat){no_salle = no_salle_pat;}

	//Méthodes
	public String toString(){
		return (String)(prenom + " " + nom + ", " + age + " an(s), operation : " +
				operation + ", salle : " + no_salle);
	}
}

class Salle{
	//Attributs
	private int no_salle, nb_operations, capacite_heure;
	private int duree_totale = 0;
	
	//Constructeur
	public Salle(int num_salle, int nb_op, int cap_h){
		no_salle = num_salle;
		nb_operations = nb_op;
		capacite_heure = cap_h;
	}
	//Méthodes
	public String toString(){
	
		if(duree_totale > capacite_heure){
			System.out.println("Erreur : Capacité < Durée totale");
			return "";
		}
		return (String)("Salle " + no_salle + ", nbre d'opérations : " +
		nb_operations + ", capacité : " + capacite_heure + ", durée totale : " +
		duree_totale);
	}
	
	public void Assigner(Patient p){
		if(p.Get_no_salle() != -1){
			System.out.println("Erreur : une salle est déjà assignée à ce patient.");
		}
		else{
			p.Set_no_salle(no_salle);
			duree_totale += p.Get_duree();
		}
	}
	
}

public class travail1b_corneau_laflamme{

   public static void main(String[] args){
		
		//6 patients
		Patient patient1 = new Patient(55, "Newton", "Isaac", "chirurgie", 2);
		Patient patient2 = new Patient(25, "Darwin", "Charles", "chirurgie", 4);
		Patient patient3 = new Patient(43, "Einstein", "Albert", "chirurgie", 3);
		Patient patient4 = new Patient(21, "Feynman", "Richard", "chirurgie", 2);
		Patient patient5 = new Patient(69, "Fisher", "Ronald", "chirurgie", 2);
		Patient patient6 = new Patient(30, "Gauss", "Carl", "chirurgie", 4);
		
		//2 salles
		Salle salle1 = new Salle(23, 15, 400);
		Salle salle2 = new Salle(45, 30, 250);
		
		//Affichage du contenu
		System.out.println(patient1.toString());
		System.out.println(patient2.toString());
		System.out.println(patient3.toString());
		System.out.println(patient4.toString());
		System.out.println(patient5.toString());
		System.out.println(patient6.toString());
		System.out.println(salle1.toString());
		System.out.println(salle2.toString());
		
		//Assignation à des salles
		salle1.Assigner(patient1);
		salle1.Assigner(patient2);
		salle1.Assigner(patient3);
		salle2.Assigner(patient4);
		salle2.Assigner(patient5);
		salle2.Assigner(patient6);
		
		//Affichage du contenu une 2e fois
		System.out.println(patient1.toString());
		System.out.println(patient2.toString());
		System.out.println(patient3.toString());
		System.out.println(patient4.toString());
		System.out.println(patient5.toString());
		System.out.println(patient6.toString());
		System.out.println(salle1.toString());
		System.out.println(salle2.toString());
      
   }
   	public static int floor(double number){
		return 0;
	}
	
}

