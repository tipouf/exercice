package fr.eni.complexe;

import java.awt.peer.SystemTrayPeer;
import java.util.Arrays;

public class DemonstrationChaineCaract�re {

	public static void main(String[] args) {
		String bidule = "tipouf";
		String bubulle = "pitouf";
		System.out.println(bidule.charAt(1)); /*charAt permet de r�cup�rer un caract�re de la chaine de caract�res */
		boolean value = bidule.equals(bubulle); /* .equals() permet de comparer 2 cha�nes de caract�res */
		System.out.println(value);
		System.out.println(bubulle.length()); /* Permet de voir la longueur de la cha�ne de caract�re */
		System.out.println(bubulle.replace('p', 'f')); /* replace le caract�re 'p' par le caract�re 'f'*/
		System.out.println(bubulle.substring(2)); /* enl�ve 2 caract�res */
		
		
		String magnum = "fdfgrgregreg"; /* transforme un String en tableau de caract�re */
		char[] tableauCaracter;
		tableauCaracter = magnum.toCharArray();
		System.out.println(Arrays.toString(tableauCaracter));
		
		String mag ="  fdfdf   ";
		System.out.println(mag);
		System.out.println(mag.trim()); /* Permet d'enlever des espaces au debut et � la fin */
		
		System.out.println("l\'apostrophe :\"3\"\\\t\b\r");
	}

}
