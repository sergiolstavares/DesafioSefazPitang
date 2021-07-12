package com.desafioSefazPitang.controller;

import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.desafioSefazPitang.model.User;
import com.desafioSefazPitang.repository.UserRepository;







@WebServlet(name ="Login",urlPatterns = {"/","/main"}  )
public class LoginController extends HttpServlet {
	
	
	private static final long serialVersionUID = 2L;
	private static String INSERT_OR_EDIT = "user/user.jsp";
	private static String LIST_USER= "/desafioSefazPitang/listUser.jsp";
	private static String LOGIN_USER = "/desafioSefazPitang/login.jsp";
	private static String INDEX_USER = "/desafioSefazPitang/index.jsp";
	private UserRepository userRepository;

	public LoginController() {
		super();
		userRepository = new UserRepository();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
	}
	
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
			boolean logado = false;
		
		try {
			
			String loginEmail = request.getParameter("loginEmail");
			String loginPassword = request.getParameter("loginPassword");
			
			List<User> users = userRepository.getAll();
			
			
			for(User user: users){
				
				String emailUser = user.getEmail();
				String passwordUser=user.getPassword();
				
				
				if(loginEmail.equals(emailUser) & loginPassword.equals(passwordUser)){
					 response.sendRedirect("/desafioSefazPitang/index.jsp");
					 logado = true;
					 break;
					 
				}
			
		}
			if(logado == false) {
				response.sendRedirect(LOGIN_USER);
			}
} catch (Exception e) {
}	
	}
}