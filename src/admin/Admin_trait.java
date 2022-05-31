package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admine.Admin_jav;
import article.List_article;
import base.Database;

/**
 * Servlet implementation class Admin_trait
 */
@WebServlet("/Admin_trait")
public class Admin_trait extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_trait() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Database data = new Database();
		String nom_admin = request.getParameter("nom_admin");
		String mdp_admin = request.getParameter("mdp_admin");
		Admin_jav admin = new Admin_jav();
		admin.setNom(nom_admin);
		admin.setMdp(mdp_admin);
		
		try {
		data.admin();
		 
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(admin.getNom().equals(data.getAdmin_nom())&& admin.getMdp().equals(data.getAdmim_mdp())) {
			
			response.sendRedirect("inserer_article.jsp");
		}
	}

}
