package com.servlets;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.NoteTaker;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public UpdateServlet() {
        super();
     
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			String writer=request.getParameter("writer");
			int id=Integer.parseInt(request.getParameter("id").trim());
			
			Session session=FactoryProvider.getFactory().openSession();
			Transaction tx=session.beginTransaction();
			
			NoteTaker nt=(NoteTaker) session.get(NoteTaker.class, id);
			
			nt.setTitle(title);
			nt.setContent(content);
			nt.setWriter(writer);
			nt.setAddedDate(new Date());
			
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
