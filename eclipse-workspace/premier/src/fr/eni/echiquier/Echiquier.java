package fr.eni.echiquier;

public class Echiquier {

		public static void main(String[] args) {
			
			double [][] tableau = new double [8][8]; 
			float grain=1, total=0;
			int ligne=0, colonne=0;

			for (ligne = 0; ligne <8 ; ligne++) {	
				if (ligne == 0 && colonne == 0 ) {
					tableau[ligne][colonne] = grain;
					colonne++;
					total += grain;
					System.out.print(tableau[ligne][colonne]);
					System.out.print("-");}
				
				else if ((ligne == 0 && colonne > 0) || (ligne > 0 && colonne >=0) ) {
					for  (colonne=0; colonne<8; colonne++) {
						grain*=2;
						total+=grain;
						tableau[ligne][colonne] = grain;
						System.out.print(tableau[ligne][colonne]);
						System.out.print("-");
					}
				}
				System.out.println(" ");
				}
			} 
}
		
/* la solution!!
	public static void main(String[] args) {

		
		float[][] echiquier = new float[8][8];
		float total = 0;
		float grains = 0;

		for(int ligne=7; ligne >= 0; ligne--)
		{
			for(int col=0; col<=7; col++)
			{
				if((ligne < 7) || (col > 0)) grains *= 2;
				else grains = 1;
				echiquier[ligne][col] = grains;
				total += grains;
			}
		}
		
		afficherEchiquier(echiquier);
		System.out.println("Total : " + total);
	}
	
	public static void afficherEchiquier(float[][] echiquier)
	{
		for(int ligne=7; ligne >= 0; ligne--)
		{
			for(int col=0; col<=7; col++)
			{
				System.out.println(ligne + " x " + col + " = " + echiquier[ligne][col]);
			}
		}
		System.out.println("--------");
	}
 */
				