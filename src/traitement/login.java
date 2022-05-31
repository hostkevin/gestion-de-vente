package traitement;

import java.io.IOException;
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

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String name =request.getParameter("nom"); 
		String mdp =request.getParameter("mdp"); 
	    HttpSession session_nom = request.getSession();     
	    HttpSession session_mdp = request.getSession(); 
	    session_nom.setAttribute("anarana", name);	
	    session_mdp.setAttribute("prenom", mdp); 
	   try 
	   {
		   String driver="com.mysql.jdbc.Driver";
		   String url="jdbc:mysql://localhost:3306/test";
		   String username="root";
		   String pass = "root";
		   Connection connex =DriverManager.getConnection(url,username,pass);
		   Class.forName(driver);
	       Statement stmt = connex.createStatement();
	       String sql = "SELECT * from personne where nom ='"+name+"' and prenom ='"+mdp+ "'";
	       ResultSet result =stmt.executeQuery(sql);
	        
	        if(result.next()) 
	        {
	        	 response.sendRedirect("hello.jsp");
	     	    
	        }
	   }
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
	
	}

	
	}

	


