package fr.eni.complexe;

import java.util.Random;
import java.util.Scanner;

public class GestionVilles {

	private static Random rnd =new Random(); // permet de generer un chiffre aléatoire!!!
	
	public static void main(String[] args) {
		
		String[] tab = {"Lille", "Lens", "Amiens", "Rouen", "Caen", "Rennes", "Nantes", "Niort", "Bordeaux", "Bayonne"};
		
				
		afficherVilles(tab);
		char lettre = saisirLettre("Veuillez saisir une lettre:");
		String lettreString = String.valueOf(lettre);
		System.out.println("-----------------");
		afficherVilleParLettre(lettreString, tab);
		System.out.println("-----------------");
		ajouterNombre(tab);
		System.out.println("-----------------");
		ajouterNombreMethodeBis(tab);
		afficherVilles(tab);
	}
		
	static void ajouterNombreMethodeBis(String[] tab) { // en enlevant "private" je permet au programme d'acceder a la valeur concatené
		for (int i = 0; i < tab.length; i++) {
			tab[i] += rnd.nextInt();
		}
		
	}

	private static void ajouterNombre(String[] tab) {
		for (int mot = 0; mot < tab.length; mot++) {
			String alea = String.valueOf((int)(Math.random()*100));
			tab[mot]= tab[mot].concat(alea);
			System.out.println(tab[mot]);
		}
		
	}

	private static char saisirLettre(String texte) {
		System.out.println(texte);
		Scanner saisie = new Scanner(System.in);
		return saisie.next().charAt(0);
	}

	private static void afficherVilleParLettre(String lettreString, String[] tab) {
		for (String villes : tab) {
			String lettre = lettreString.toUpperCase(); 
			if (villes.charAt(0) == lettre.charAt(0)){
				System.out.println(villes);
				}
			
		}
		
	}

	private static void afficherVilles(String[] tab) {
		for (String villes : tab) {
			System.out.println(villes);
		}
		
	}

}
