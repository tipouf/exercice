package fr.eni.fonction;

import java.util.Scanner;

public class Fonction {

	public static void main(String[] args) {

		int nb = saisirNombre();
		
		affichageNbPremier(nb);
	}
	private static void affichageNbPremier(int nb) {
for (int i = 3; i < nb; "i+ 2") {
	
}
		}


	public static int saisirNombre() {
		System.out.println("afficher des nombres premiers!");
		Scanner saisie = new Scanner(System.in);
		return saisie.nextInt();
		}
}