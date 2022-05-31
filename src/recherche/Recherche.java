package recherche;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.Database;
import search.Search;

/**
 * Servlet implementation class Recherche
 */
@WebServlet("/Recherche")
public class Recherche extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Recherche() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	Database data = new Database();
	Recherche_traitement search=new Recherche_traitement();
    String recherche =request.getParameter("recherche");	 
	String recherche_avancer =request.getParameter("recherche_avancer");	 
	
	search.setRecherche(recherche);
	search.setRecherche_avancer(recherche_avancer);
	
	try {
	    request.setAttribute("search", data.recherche_avancer(search));
	    RequestDispatcher rd=request.getRequestDispatcher("Recherche.jsp");  
	   rd.forward(request, response);  
	}catch(Exception e) {
		e.printStackTrace();
	}
	}


}
