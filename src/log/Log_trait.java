package log;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import base.Database;
import maka.Maka;
import recup.Recuperation;
import trait.Trait;

/**
 * Servlet implementation class Log_trait
 */
@WebServlet("/Log_trait")
public class Log_trait extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public String email_login;
       public String mdp_login;
      
       /**
     * @see HttpServlet#HttpServlet()
     */
    public Log_trait() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 Database data = new Database();
		
		
		
		
		
		//coter client
		Recuperation recup = new Recuperation();
	     email_login = request.getParameter("email_login");
	     mdp_login = request.getParameter("mdp_login");
	     String emailMaka=null;
	       String mdpMaka=null;
	    
	    Recuperation recups = new Recuperation();
	  	Maka maka = new Maka();
	    recups.setEmailRecup(email_login);
	  	recups.setMdpRecup(mdp_login);
	    HttpSession session = request.getSession(); 
        session.setAttribute("email_login",recups.getEmailRecup());  
        session.setAttribute("mdp_login",recups.getMdpRecup()); 
       
        try {
        	 data.afficher_membre(recups);	
        	 session.setAttribute("nom",data.getGetnom());
        	 session.setAttribute("vola", recups.getVola());
        }
       catch(Exception e) {
    	   e.printStackTrace();
       }
       
            if(recups.getEmailRecup().equals(data.getGetMail()) && recups.getMdpRecup().equals(data.getGetMdp())) {
            	
            	response.sendRedirect("welcome.jsp?nom="+session.getAttribute("nom")+"&vola="+session.getAttribute("vola"));
            	 
            }
	
	}
	    	
	}
	 


