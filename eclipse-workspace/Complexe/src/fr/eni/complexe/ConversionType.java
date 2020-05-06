package fr.eni.complexe;

public class ConversionType {

	public static void main(String[] args) {
		int unEntier = 10;
		float uneVirgule = unEntier; /*conversion Implicite*/

		double unChiffreAVirgule = 102.5;
		int truc = (int)unChiffreAVirgule; /* conversion Explicite car il faut precider (int) puisqu'il y a une perte d'information lors de la conversion */
		
		char bidulle = 'a';
		int chiffre= 100;
		Boolean test = true;
		String.valueOf(bidulle); /* Convertit un type en chaine de caractere */
		String.valueOf(chiffre); 
		String.valueOf(test);
		System.out.println(test);
		
		/* Les WRAPPERS!!!! */
		int wrap = Integer.parseInt("10"); /* Convertit une chaîne de caractère en entier */
		double wraps = Double.parseDouble("1000000000000000"); /* pareil pour "Long" */
		System.out.println(wrap);
		System.out.println(wraps);
		
		/* AUTOBOXING ET UNBOXING */
		
		/* AUTOBOXING */
		char ab = 'a';
		Character bc = 'b';
		
		int deux = 2;
		Integer trois = 3;
		
		/*UNBOXING */
		Double[] tab = new Double[1]; // le tableau tab a une taille de 1
		tab[0] = 3.14159; //Autoboxing // je met la valeur 3.14.. dans la seule case existante du tableau
		
		double pi = tab[0]; // Unboxing
		
		
		/*DEMO*/
		byte unByte = 100; // sur 8 bit
		short unShort = unByte; // sur 32 bits donc pas de perte de donnée.
		
		byte deuxBytes = (byte)unShort; 
		
		double testDouble = 10.25;
		float testFloat = (float)testDouble; //il faut préciser (float) quand on veut faire une conversion avec perte de donnée.
		
	
		// ATTENTION // 
		float unFloat2 = (float)10.25; // Par défaut le compilateur considere les nombres a vigules comme des "double", il faut donc préciser (float).
		//sinon mettre // 
		float unFloat3 = 10.25f;
		float unFloat4 = 10.25F;
		
		//pas besoin de préciser pour les double
		double unDouble2= 10.25;
		
		//DEMO WRAPPER
		
		String uneString = "10";
		Double unDouble3 = Double.parseDouble(uneString);
		System.out.println(unDouble3);
		int unEntier1 = Integer.parseInt(uneString);
		System.out.println(unEntier1);
	}

}
