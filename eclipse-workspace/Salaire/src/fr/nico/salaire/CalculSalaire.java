package fr.nico.salaire;

import java.util.Scanner;

public class CalculSalaire {

	public static float baseSalaire = 15.50f ;
	public static float sup = 0 ;
	
	public static void main(String[] args) {
		
		System.out.println("Votre nom");
		String nomPersonne = saisirString();
		System.out.println("Votre pr�nom");
		String pr�nomPersonne = saisirString();			
		/*System.out.println("Votre Statut? tapez: 1 pour cadre, 2 pour agent de ma�trise ou 3 pour Employ� de bureau.");
		int statut = saisirInt();*/
		System.out.println("nombre d'heure effectu�s?");
		int nombreHeure = saisirInt();
		System.out.println("Bonjour mr/mme " + pr�nomPersonne+" "+ nomPersonne + ", votre salaire est de " + calculHeures(nombreHeure) + " euros" + "(status: " + statusEmploy�() + ").");
	}
	
	/* saisie cha�nes de caract�res */
	public static String saisirString() {
		Scanner saisie = new Scanner(System.in);
		String result = saisie.nextLine();
		return result;
	}
	/* saisie d'entier */
	public static int saisirInt() {
		Scanner saisie = new Scanner(System.in);
		int result = saisie.nextInt();
		return result;
	}
	/* calcul salaire */
	public static float calculHeures(int heures) {
		if (heures - 180 > 0) { sup = (float)(baseSalaire*heures + (heures- 180)*60/100*baseSalaire + 20*50/100*baseSalaire);
		} else if (heures > 169) {sup = (float)(baseSalaire*heures + 20*50/100*baseSalaire);
		} else {sup = (float)(baseSalaire*heures);
		};
		return  sup;
	}
	/* status employ� */
	public static String statusEmploy�() {
		String status;
		System.out.println("Votre Statut? tapez: 1 pour cadre, 2 pour agent de ma�trise ou 3 pour Employ� de bureau.");
		Scanner saisie = new Scanner(System.in);
		int choice = saisie.nextInt();
		switch (choice) {
		case 1: status = "cadre";break;
		case 2: status = "agent de maitrise";break;
		case 3: status = "employ� de bureau";break;
		default: status = "inconnu";break;
		}
		return status;
	}
}
