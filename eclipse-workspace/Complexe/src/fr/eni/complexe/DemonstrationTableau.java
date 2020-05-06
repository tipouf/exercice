package fr.eni.complexe;

import java.util.Arrays;
import java.util.Random;

public class DemonstrationTableau {

	public static void main(String[] args) 
	{
		int[] tab;
		tab = new int[10];
		
		Arrays.fill(tab, 6); /* Permet de remplir le tableau de */
		System.out.println(Arrays.toString(tab)); /* Permet de visualiser le contenu du tableau!*/
		
		for (int i = 0; i < tab.length; i++) {
			tab[i] = (int)(Math.random()*100); /*Permet de remplir un tableau avec des chiffres al�atoires entre 0 et 100 */
		}
		System.out.println(Arrays.toString(tab)); /* Permet de visualiser le contenu du tableau!*/
		
		Arrays.sort(tab); /* Permet de filtrer par grandeur, le contenu du tableau */
		System.out.println(Arrays.toString(tab)); /* Permet de visualiser le contenu du tableau!*/
		
		for (int i : tab) {
			System.out.println(i + ", "); /* for each */
		}
			
		int[] tab2 = {1,2,10,4,5,6};
		Arrays.sort(tab2);
		System.out.println(Arrays.toString(tab2));
		int A = Arrays.binarySearch(tab2, 10); /* Permet de trouver l'index o� se trouve notre valeur recherch�e */
		System.out.println(A);
		System.out.println(Arrays.binarySearch(tab2, 10));
		
		
		int[] tab3 = Arrays.copyOf(tab, 20); /* Permet de changer la taille d'un tableau */
		System.out.println(Arrays.toString(tab3));
		System.out.println(Arrays.toString(Arrays.copyOf(tab, 20)));
		
		int[] tab4 = Arrays.copyOfRange(tab3, 1, 3);/* Permet d'effectuer une copie d'un tableau a partir d'un index sp�cifi� jusqu'� un index sp�cifi� non inclus */
		System.out.println(Arrays.toString(tab4)); 
		
		int[][] multiDim = new int[8][]; /* chaque �l�ment du tableau peut contenir un tableau (seule la taille du premier tableau est obligatoire au d�part) */
		multiDim[0] = new int [6]; /* le premier �l�ment du tableau contient un tableau qui fait une taille de 6 */
		
		}
	}

