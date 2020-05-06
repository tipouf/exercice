package fr.eni.complexe;

//ENUMERATION => une variable ne peux prendre qu'un nombre restreint de valeurs.

enum Jours
{
	LUNDI,
	MARDI,
	MERCREDI,
	JEUDI,
	VENDREDI,
	SAMEDI,
	DIMANCHE
}

public class Enumeration {

	public static void main(String[] args) {
		Jours jour = Jours.JEUDI; // Creation d une variable de type jour.
		
		for(Jours test : Jours.values()) 
		{
			System.out.println(test.name() + " " + test.ordinal()); // .name permet de recuperer  le jour et .ordinal permet de recuperer la position de la constante
			

			}
		if (jour == jour.JEUDI) {
			System.out.println(jour);

		
		}
	}
		

	}


