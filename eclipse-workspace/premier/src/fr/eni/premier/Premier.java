package fr.eni.premier;

import java.util.Scanner;

public class Premier {

	public static void main(String[] args) {
		int max = saisir("veuillez saisir un nombre max");

		
		for (int i = 3; i <= max; i+=2) {
			if (max%i ==0) {
				System.out.println(i + " est un nombre premier");
				}
			}
		}
	


	private static int saisir(String phrase) {
		System.out.println(phrase);
		Scanner sc = new Scanner(System.in);
		return sc.nextInt();
	}

}
