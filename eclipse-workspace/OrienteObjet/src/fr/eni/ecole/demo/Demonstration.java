package fr.eni.ecole.demo;

import fr.eni.ecole.entite.Rectangle;

public class Demonstration {

	public static void main(String[] args) {
		
		Rectangle r = new Rectangle(2.3,4.5);

		Double aire = r.getAire();
		System.out.println("L'aire est de " + aire);
		
		Rectangle r2 = new Rectangle();
		r2.largeur = 5.0;
		r2.longueur = 5.1;
		
		Double perimetre = r2.getPerim();
		System.out.println(perimetre);
	}

}
