package suppr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.Database;
import pan_suppr.Panier_suppr;

/**
 * Servlet implementation class Supprimer
 */
@WebServlet("/Supprimer")
public class Supprimer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Supprimer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.getWriter().append("Served at: ").append(request.getContextPath());
	Database data = new Database();
    Panier_suppr supprimer = new Panier_suppr();
	int id_panier = Integer.parseInt(request.getParameter("id_panier"));
    String nom=request.getParameter("nom");
	String saisiseur=request.getParameter("saisiseur");
	supprimer.setNom_panier(nom);
	supprimer.setSaisiseur_panier(saisiseur);
	supprimer.setId_panier(id_panier);
	try {
	    data.delete(supprimer);	 
	    response.sendRedirect("Panier_persone.jsp?nom="+saisiseur);   
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	
	
	}

	}
