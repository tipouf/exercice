package fr.eni.complexe;

import java.util.Scanner;

public class Cryptage {

	public static void main(String[] args) {
			
		/*
		 * Programme permettant de crypter ou décrypter une chaîne saisie en fonction de la clé saisie sur 8 caractères maximum
		*/

		String chaine = saisirString();
		String cleCrypto = saisirString();
		
		int nombre = 65;
		char lettre = (char)nombre;
		System.out.println(lettre);
		
		char [][] tableau = new char [26][26]; 
		
		for (int i = 0; i < tableau.length; i++) {
			for (int j = 0; j < tableau.length; j++) {
				int value = ;
				
				
			}
			
		}
		
	}






private static String saisirString() {
	Scanner scan = new Scanner(System.in);
	return scan.nextLine();
	}
}