package com.servlets;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.entities.NoteTaker;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		try {
			
			//fetch data
			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			String writer=request.getParameter("writer");
			NoteTaker note=new NoteTaker(title,content,writer,new Date());
			
		//save data
			
			Session session = FactoryProvider.getFactory().openSession();
			
			
			Transaction tx = session.beginTransaction();
			
			session.save(note);
			tx.commit();
			
			response.sendRedirect("showNotes.jsp");
			
		session.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
