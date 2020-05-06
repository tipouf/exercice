package fr.eni.max;

import java.util.Scanner;

public class Max {
	public static void main(String[] args) {
		
		int valeur1 = saisirInt("1ere valeur");
		int valeur2 = saisirInt("2nd valeur");
		System.out.println("La valeur la plus grande est " + MaxValeur(valeur1,valeur2) + " : " + TestValeur(valeur1,valeur2));
	}

	private static String TestValeur(int valeur1, int valeur2) {
		if (valeur1 == valeur2) {return "0";}
		else if(valeur1 > valeur2) {return "-1";}
		else {return "--1";}
	}

	private static int MaxValeur(int valeur1, int valeur2) {
		int max;
		if (valeur1>valeur2) {max = valeur1;
		} else {max = valeur2;};
		return max;
	}

	private static int saisirInt(String phrase) {
		System.out.println("Entrer la " + phrase  );
		Scanner saisie = new Scanner(System.in);
		return saisie.nextInt();
	}

}
