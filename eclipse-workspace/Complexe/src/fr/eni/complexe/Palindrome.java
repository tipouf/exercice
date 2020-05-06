package fr.eni.complexe;

import java.util.Scanner;

public class Palindrome {

	public static void main(String[] args) {
		boolean palindrome = false;
		String phrase = saisirString("Entrer une phrase:");
		
		for (int i = 1; i < phrase.length()-1/2; i++) {
			if (phrase.charAt(i-1) == phrase.charAt(phrase.length()-i)) {
			palindrome = true;}
			else {palindrome = false;break;}
			}

		if (palindrome == true) {
			System.out.println(phrase + " est un palindrome!");
		} else {
			System.out.println(phrase + " n'est pas un palindrome.");}		
		}

	private static String saisirString(String phrase) {
		System.err.println(phrase);
		Scanner saisie = new Scanner(System.in);
		return saisie.nextLine();
	}
}

	


