
package fr.eni.complexe;

import java.util.Arrays;

public class DemonstrationChaineCaractereProf {

	public static void main(String[] args) {
		String bibi = "truc";
		char[] shmoul = bibi.toCharArray();
		System.out.println(Arrays.toString(shmoul)); /* affiche le tableau de caractere. */
		String brouk = new String (shmoul); /* affiche la chaine de caractere de type string */
		System.out.println(brouk);
		String ab = "mardi", bc = "MARDI";
		System.out.println(ab.equalsIgnoreCase(bc)); /* regarde si 2 string sont egales en ignorant la casse */
		System.out.println(ab.toUpperCase().equals(bc));
		
		
		
		
	}

}
