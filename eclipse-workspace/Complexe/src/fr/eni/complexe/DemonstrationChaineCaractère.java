package fr.eni.complexe;

import java.awt.peer.SystemTrayPeer;
import java.util.Arrays;

public class DemonstrationChaineCaractère {

	public static void main(String[] args) {
		String bidule = "tipouf";
		String bubulle = "pitouf";
		System.out.println(bidule.charAt(1)); /*charAt permet de récupérer un caractère de la chaine de caractères */
		boolean value = bidule.equals(bubulle); /* .equals() permet de comparer 2 chaînes de caractères */
		System.out.println(value);
		System.out.println(bubulle.length()); /* Permet de voir la longueur de la chaîne de caractère */
		System.out.println(bubulle.replace('p', 'f')); /* replace le caractère 'p' par le caractère 'f'*/
		System.out.println(bubulle.substring(2)); /* enlève 2 caractères */
		
		
		String magnum = "fdfgrgregreg"; /* transforme un String en tableau de caractère */
		char[] tableauCaracter;
		tableauCaracter = magnum.toCharArray();
		System.out.println(Arrays.toString(tableauCaracter));
		
		String mag ="  fdfdf   ";
		System.out.println(mag);
		System.out.println(mag.trim()); /* Permet d'enlever des espaces au debut et à la fin */
		
		System.out.println("l\'apostrophe :\"3\"\\\t\b\r");
	}

}
