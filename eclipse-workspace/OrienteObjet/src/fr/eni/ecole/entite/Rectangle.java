package fr.eni.ecole.entite;

public class Rectangle {

		public Double longueur;
		public Double largeur;

		public Rectangle() {
	
		}
		
		public Rectangle(Double lo, Double la) {
			this.longueur = lo;
			this.largeur = la;
			
		}
		
		public Double getPerim() {
			return (longueur + largeur)/2;
				}
		public Double getAire() {
			return longueur*largeur;
		}
		}

