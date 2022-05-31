package mag;

import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mysql.cj.Session;
import javax.servlet.http.Part;

import article.Article;
import article.List_article;
import base.Database;
import panier.Panier;
import recup.Recuperation;

import java.io.*;
import java.util.*;
/**
 * Servlet implementation class Magasin
 */
@WebServlet("/Magasin")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
public class Magasin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Magasin() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String getimg = request.getParameter("img");
    String saisiseur = request.getParameter("saisiseur");
    String get_ar = request.getParameter("nom_article");
    int get_prix =Integer.parseInt(request.getParameter("Prix_article"));
    int get_quantiter =Integer.parseInt(request.getParameter("quantiter_article"));
    String get_type = request.getParameter("type_article");
    Panier panier = new Panier();
    panier.setNomArticle_panier(get_ar);
    panier.setPrixArticle_panier(get_prix);
    panier.setQuantiterArticle_panier(get_quantiter);
    panier.setTypeArticle_panier(get_type);
    panier.setSaisiseur(saisiseur);
    panier.setImg(getimg);
    Database data = new Database();
    try {
    data.insert_panier(panier);
    response.sendRedirect("welcome.jsp?nom="+saisiseur);
    }
    catch(Exception e) {
  	  e.printStackTrace();
    }
}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	  
    	    
	      
    	response.setContentType("text/html");
	    
		response.getWriter().append("Served at: ").append(request.getContextPath());
		

		
		
		 Part part = request.getPart("image");
	    String fileName = getSubmittedFileName(part);
		 
		 String nom_article = request.getParameter("nom_article");
	     String quantiter_article =  request.getParameter("quantiter_article");
	     String type_de_article = request.getParameter("type_de_l'article");
	     int prix_ar= Integer.parseInt(request.getParameter("prix_article"));
	    int quantiter_ar=Integer.parseInt(request.getParameter("quantiter_article"));
	    Article article = new Article();       
	    article.setNom_article(nom_article);
	    article.setPrix_article(prix_ar);
	    article.setQuantiter_article(quantiter_ar);
	    article.setType_article(type_de_article);
	    article.setImage(fileName);
	    try {
	    	Database data = new Database();  
	    	data.insert_article(article);
	        response.sendRedirect("inserer_article.jsp");
	      }
	      catch(Exception e) {
	    	  e.printStackTrace();
	      }
	
	  
	    }
	       
	       
    
    
    
    
    


private static String getSubmittedFileName(Part part) {
    for (String cd : part.getHeader("content-disposition").split(";")) {
        if (cd.trim().startsWith("filename")) {
            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
        }
    }
    return null;



}
}
