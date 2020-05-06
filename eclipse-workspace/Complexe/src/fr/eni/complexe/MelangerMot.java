package fr.eni.complexe;

import java.util.Arrays;

public class MelangerMot {

	public static void main(String[] args) {
		String phrase = "La saison des haricots est arrivé hier au lieu de mardi";
		int i = 0;
		String[] tableau = phrase.split(" ");
		if (tableau.length <=2){
			System.out.println(tableau[1]);
		}
			for (i = 0; i <tableau.length-1; i++) {
		}
		
		char[] tableau2 = tableau[i].split("")[i].toCharArray(); // découpage mots en lettres
		System.out.println(tableau2);
		
		
		
		//System.out.println(Arrays.toString(tableau2));
		//System.out.println(i);
		//for (int j = 0; j < tableau.length; j++) {
			//System.out.println(tableau2[tableau[i].length()-1]); // pas voulu mais affiche la derniere lettre de chaque mo
	//}
	//for (int k = 0; k < tableau2.length; k++) {
		//	for (int l = 1; l< (tableau2[l].length()-1); l++) {
			//	System.out.print(tableau2[l]);
			//}
			//System.out.print(tableau2[k]); 
		
	}
	}


//		for (String mot : tableau) {
//			System.out.println(mot);
//		}
	



