package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.NoteTaker;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		try {
			
			int id=Integer.parseInt(request.getParameter("id").trim());
			
			Session session = FactoryProvider.getFactory().openSession();
			
			Transaction tx = session.beginTransaction();
			
			NoteTaker noteTaker =(NoteTaker) session.get(NoteTaker.class, id);
			
			session.delete(noteTaker);
			tx.commit();			
			session.close();
			
			response.sendRedirect("showNotes.jsp");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	
	}


}
