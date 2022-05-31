package trait;
import Membre.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import base.Database;
import recup.Recuperation;

/**
 * Servlet implementation class Trait
 */
@WebServlet("/Trait")
public class Trait extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public String email;
    public String mdp;
    public Object email_recup;
    public Object mdp_recup;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Trait() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     response.setContentType("text/htlm");
		 PrintWriter out = response.getWriter();
	
		 
	     String  name =request.getParameter("nom"); 
		 String prenom =request.getParameter("prenom"); 
		  email =request.getParameter("email"); 
		  mdp =request.getParameter("mdp"); 
		  
		
		
		
		 Membre membre = new Membre();   
	     membre.setNom(name);
	     membre.setPrenom(prenom);
	     membre.setEmail(email);
	     membre.setMdp(mdp);
	
		 HttpSession session = request.getSession();     
		
		 session.setAttribute("email",membre.getEmail());	
		 session.setAttribute("mdp", membre.getMdp()); 
	
		 Database data = new Database();
	     try {
	     data.insert(membre);
	     response.sendRedirect("index.jsp");
	   
	     }
     catch(Exception e) {
    	 e.printStackTrace();
     }
	
	}
}
