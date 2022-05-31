package confirmation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.Database;
import confirmation_trai.Confirmation_trait;
import pan_suppr.Panier_suppr;

/**
 * Servlet implementation class Confirmation
 */
@WebServlet("/Confirmation")
public class Confirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Confirmation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Confirmation_trait confirm = new Confirmation_trait();
		Database data = new Database();
		Panier_suppr pan = new Panier_suppr();
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    String saisiseur=request.getParameter("saisiseur"); 
		String nom=request.getParameter("nom");
	    String img=request.getParameter("img");
		int vola =Integer.parseInt(request.getParameter("vola")); 
	    int prix = Integer.parseInt(request.getParameter("prix"));
	     confirm.setNom(nom);
	     confirm.setPrix(prix);
	     confirm.setVola(vola);
	     confirm.setSaisiseur(saisiseur);
	     confirm.setImg(img);
	     int prix_moin=confirm.getPrix();
	     pan.setPrix_panier(prix);;
	     try {
	    	 data.insert_achat(confirm);
	         data.delete_achat(pan);;
	        
	         response.sendRedirect("Panier_persone.jsp?nom="+saisiseur);
	          // vola=vola-prix_moin;
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	   
	}

	

}
