package suppr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.Database;

/**
 * Servlet implementation class Supprimer_article
 */
@WebServlet("/Supprimer_article")
public class Supprimer_article extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Supprimer_article() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	 String nom_article=request.getParameter("nom_article");
	 Database data= new Database();
	 Supprimer_article_Traitement suppression = new Supprimer_article_Traitement();  
	 suppression.setNom_article(nom_article);
	   try {
		   data.delete_article(suppression);
	        response.sendRedirect("Supprimer.jsp");
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
