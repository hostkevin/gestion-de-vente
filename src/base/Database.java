package base;


import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Part;


import Membre.Membre;
import article.Article;
import article.List_article;
import confirmation_trai.Confirmation_trait;
import log.Log_trait;
import maka.Maka;
import pan_suppr.Panier_suppr;
import panier.Panier;
import recherche.Recherche_details;
import recherche.Recherche_traitement;
import recup.Recuperation;
import search.Search;
import suppr.Supprimer_article_Traitement;
import trait.Trait;

public class Database 
{
	 String getMail;
	 String getMdp;
	 String getnom;
	 String recherche_nom;
	 int recherche_prix;
	 String recherche_img; 

	 String nom_article;
	 int prix_article;
	 int quantiter_article;
	 String type_article;
	 String img;
	 
	 public String getNom_article() {
		return nom_article;
	}

	public void setNom_article(String nom_article) {
		this.nom_article = nom_article;
	}

	public int getPrix_article() {
		return prix_article;
	}

	public void setPrix_article(int prix_article) {
		this.prix_article = prix_article;
	}

	public int getQuantiter_article() {
		return quantiter_article;
	}

	public void setQuantiter_article(int quantiter_article) {
		this.quantiter_article = quantiter_article;
	}

	public String getType_article() {
		return type_article;
	}

	public void setType_article(String type_article) {
		this.type_article = type_article;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}


	String nom_achat;
	 public String getNom_achat() {
		return nom_achat;
	}

	public void setNom_achat(String nom_achat) {
		this.nom_achat = nom_achat;
	}

	public String getImg_achat() {
		return img_achat;
	}

	public void setImg_achat(String img_achat) {
		this.img_achat = img_achat;
	}

	public String getSaisisseur_achat() {
		return saisisseur_achat;
	}

	public void setSaisisseur_achat(String saisisseur_achat) {
		this.saisisseur_achat = saisisseur_achat;
	}


	String img_achat;
	 String saisisseur_achat;
      
	public String getRecherche_img() {
		return recherche_img;
	}

	public void setRecherche_img(String recherche_img) {
		this.recherche_img = recherche_img;
	}

	public String getRecherche_nom() {
		return recherche_nom;
	}

	public void setRecherche_nom(String recherche_nom) {
		this.recherche_nom = recherche_nom;
	}

	public int getRecherche_prix() {
		return recherche_prix;
	}

	public void setRecherche_prix(int recherche_prix) {
		this.recherche_prix = recherche_prix;
	}

	public int getRecherche_quantiter() {
		return recherche_quantiter;
	}

	public void setRecherche_quantiter(int recherche_quantiter) {
		this.recherche_quantiter = recherche_quantiter;
	}

	public String getRecherche_type() {
		return recherche_type;
	}

	public void setRecherche_type(String recherche_type) {
		this.recherche_type = recherche_type;
	}


	int recherche_quantiter;
	 String recherche_type;

	public String getGetnom() {
		return getnom;
	}

	public void setGetnom(String getnom) {
		this.getnom = getnom;
	}

	

	public String getGetMail() {
		return getMail;
	}

	public void setGetMail(String getMail) {
		this.getMail = getMail;
	}

	public String getGetMdp() {
		return getMdp;
	}

	public void setGetMdp(String getMdp) {
		this.getMdp = getMdp;
	}

	
	String admin_nom;
	String admim_mdp;
	
	
	
	public String getAdmin_nom() {
		return admin_nom;
	}

	public void setAdmin_nom(String admin_nom) {
		this.admin_nom = admin_nom;
	}

	public String getAdmim_mdp() {
		return admim_mdp;
	}

	public void setAdmim_mdp(String admim_mdp) {
		this.admim_mdp = admim_mdp;
	}

	public static Connection getConnexion()
 {
     Connection con = null;
     try {
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
       
    
     }
     catch (Exception e) {
         e.printStackTrace();
         
     }
     return con;
 }

 public void insert(Membre membre ) 
{
	
	 Random ran = new Random();
	  int upperbound = 5000;
     //generate random values from 0-24
   int random = ran.nextInt(upperbound); 
	 
	 String nom = membre.getNom();
	 String prenom = membre.getPrenom();
	 String email = membre.getEmail();
	 String mdp = membre.getMdp();
	
	 
	 try {
		Connection con = getConnexion();
		String sql="INSERT INTO Persons"+"(nom,prenom,email,mdp,vola)"+ "values (?,?,?,?,?);";
		PreparedStatement ps;
		ps = con.prepareStatement(sql);
		ps.setString(1,nom);
		ps.setString(2,prenom);
		ps.setString(3,email);
		ps.setString(4,mdp);
		ps.setInt(5,random);
		ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
	}

	
}
 
 public void afficher_membre(Recuperation recups) {
	 try {
 		
	    
 		Connection con1 = getConnexion();   
 	  
 		String email=recups.getEmailRecup();
 	    String  mdp=recups.getMdpRecup(); 
 	   
 	    String requete ="SELECT * FROM Persons WHERE email=? and mdp=?" ;
 		 PreparedStatement ps1 = con1.prepareStatement(requete);
 		 ps1.setString(1, email);
 		 ps1.setString(2, mdp);
 		 ResultSet rs1 = ps1.executeQuery();
 		
             while(rs1.next()) {
 	    	 System.out.println("nom "+rs1.getString("nom") );
 		     System.out.println("prenom "+rs1.getString("prenom") );
 		     System.out.println("vola" +rs1.getInt("vola"));
 		     setGetMail(rs1.getString("email")) ;
 		     setGetMdp(rs1.getString("mdp"));
 	    	 setGetnom(rs1.getString("nom"));
 	    	 recups.setVola(rs1.getInt("vola"));
             }
 	       
           
	 }
 	catch(SQLException e1){
 		e1.printStackTrace();
 	}
 }
  public void insert_article(Article article ) {
	 
	  String nom_article = article.getNom_article();
	int prix_article = article.getPrix_article();
	int  quantiter_article = article.getQuantiter_article();
	String type_article = article.getType_article();
	String image=article.getImage();
	

	
	try {
			Connection con1 = getConnexion();
			String sql="INSERT INTO Article"+"(nom,prix,quantiter,type,image)"+ "values (?,?,?,?,?);";
		     	
			
					
			PreparedStatement ps1;
			ps1 = con1.prepareStatement(sql);
			ps1.setString(1,nom_article);
			ps1.setInt(2,prix_article);
			ps1.setInt(3,quantiter_article);
			ps1.setString(4,type_article);
		    ps1.setString(5, image);
			ps1.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}

  
  
  
  }
 
  public void insert_panier(Panier panier ) {
	  String article_nomPanier = panier.getNomArticle_panier();
		int article_prixPanier = panier.getPrixArticle_panier();
		int  article_quantiterPanier = panier.getQuantiterArticle_panier();
		String article_typePanier = panier.getTypeArticle_panier();
        String saisiseur = panier.getSaisiseur(); 
		String img = panier.getImg();
        try {
				Connection con1 = getConnexion();
				String sql="INSERT INTO Panier"+"(nom,prix,quantiter,type,saisseur,img)"+ "values (?,?,?,?,?,?);";
				PreparedStatement ps6;
				ps6 = con1.prepareStatement(sql);
				ps6.setString(1,article_nomPanier);
				ps6.setInt(2,article_prixPanier);
				ps6.setInt(3,article_quantiterPanier);
				ps6.setString(4,article_typePanier);
				ps6.setString(5,saisiseur);
				ps6.setString(6,img);
				ps6.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}

  
  }
public void admin() {
	Connection con = getConnexion();
	 
    
try {
	String requete ="SELECT * FROM  Admin" ;
    Statement stmt;
	stmt = con.createStatement();
	 ResultSet res = stmt.executeQuery(requete);
     while(res.next()) {
    	 setAdmin_nom(res.getString("nom"));
    	 setAdmim_mdp(res.getString("mdp"));
     }
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
}
public void delete(Panier_suppr panier) {
	
	int id_panier=panier.getId_panier();
	try {
 		
	   
	      
 		Connection con1 = getConnexion();   
 		PreparedStatement ps = con1.prepareStatement("DELETE from Panier WHERE id_panier = ?");
 		ps.setInt(1, id_panier);
 		ps.executeUpdate();
 		 
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	
}
}
public void recherche(Search recherche) {
	Connection con = getConnexion();   
	String rec = recherche.getSearching();
	try {
		
 	   
 	    String requete ="SELECT * FROM Article WHERE nom=? ORDER BY nom DESC" ;
 	   PreparedStatement ps1 = con.prepareStatement(requete);
		 ps1.setString(1, rec);
		 ResultSet res = ps1.executeQuery();
 	    while(res.next()) {
	    	 setRecherche_nom(res.getString("nom"));
	    	 setRecherche_prix(res.getInt("prix"));
	    	 setRecherche_quantiter(res.getInt("quantiter")); 
	    	 setRecherche_type(res.getString("type"));
 	         setRecherche_img(res.getString("image"));
 	    }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public void insert_achat(Confirmation_trait achat) {
	String nom=achat.getNom();
    int prix=achat.getPrix();
    int vola=achat.getVola(); 
    String saisiseur=achat.getSaisiseur();
    String image=achat.getImg();
    Connection con=getConnexion();
     
     try {
    	 String req="INSERT INTO Achat(nom,prix,saisiseur,image) values(?,?,?,?) ";
    	 PreparedStatement ps2=con.prepareStatement(req);
          ps2.setString(1, nom);
          ps2.setInt(2, prix);
          ps2.setString(3, saisiseur);
          ps2.setString(4, image);
          ps2.executeUpdate();
          vola=prix-vola;
          System.out.println(vola);
     }catch(Exception e) {
    	 e.printStackTrace();
     }


}
public void delete_achat(Panier_suppr pan ) {
	
	int prix=pan.getPrix_panier();
	Connection con=getConnexion();
	 try {
    	 ;
    	 PreparedStatement ps4=con.prepareStatement("DELETE from Panier WHERE prix=?");
          ps4.setInt(1, prix);
          ps4.executeUpdate();
     }catch(Exception e) {
    	 e.printStackTrace();
     }
}

public void Afficher_achat(Confirmation_trait saisi ) {
	String saisiseur=saisi.getSaisiseur();
	Connection con=getConnexion();
    try {
    	String sql="SELECT * from achat where saisiseur=?"; 
    	PreparedStatement ps5=con.prepareStatement(sql);
        ps5.setString(1, saisiseur);
        ResultSet res = ps5.executeQuery();   
        while(res.next()) {
	    	 setNom_achat(res.getString("nom"));
	    	 setImg_achat(res.getString("image"));
	    	 }
      
    
    
    }catch(Exception e) {
    	e.printStackTrace();
    }


}


public ArrayList type(){
    ArrayList v = new ArrayList();
    Connection conn;
    try{
     conn =  getConnexion();
     String sql = "select * from Article";
     PreparedStatement ps = conn.prepareStatement(sql);
     ResultSet rs = ps.executeQuery();
     while(rs.next()){
         String type = rs.getString("type");
         v.add(type);
         
     }
    }catch(Exception asd){
        System.out.println(asd.getMessage());
    }
    return v;
}
public ArrayList recherche_avancer( Recherche_traitement search){
    ArrayList array = new ArrayList();
    String recherche=search.getRecherche();
    String recherche_avancer=search.getRecherche_avancer();
    Connection conn;
    try{
     conn =  getConnexion();
     String sql1 = "select * from Article where nom=? and type=? ORDER BY nom DESC ";
     PreparedStatement ps = conn.prepareStatement(sql1);
     ps.setString(1, recherche);
     ps.setString(2, recherche_avancer);
     ResultSet rs = ps.executeQuery();
     while(rs.next()){
     Recherche_details re = new Recherche_details();
     re.setNom(rs.getString("nom"));
     re.setPrix(rs.getInt("prix"));
     re.setQuantiter(rs.getInt("quantiter"));
     re.setType(rs.getString("type"));
     re.setImage(rs.getString("image"));
     array.add(re);
     }
    }catch(Exception asd){
        System.out.println(asd.getMessage());
    }
    return array;
}


public void delete_article(Supprimer_article_Traitement suppression) {
	String nom_article=suppression.getNom_article();
	try {
 		
	   
	      
 		Connection con1 = getConnexion();   
 		PreparedStatement ps = con1.prepareStatement("DELETE from Article WHERE nom = ?");
 		ps.setString(1, nom_article);
 		ps.executeUpdate();
 		 
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	
}
}


}
 
