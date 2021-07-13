package com.desafioSefazPitang.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.desafioSefazPitang.model.Phone;
import com.desafioSefazPitang.model.User;
import com.desafioSefazPitang.repository.PhoneRepository;
import com.desafioSefazPitang.repository.UserRepository;

@WebServlet(name = "User", urlPatterns = { "/UserController" })
public class UserController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "/user.jsp";
	private static String LIST_USER = "/listUser.jsp";
	private static String LIST_PHONES = "/phones.jsp";
	private PhoneRepository phoneRepository;
	private UserRepository userRepository;

	public UserController() {
		super();
		userRepository = new UserRepository();
		phoneRepository = new PhoneRepository();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			long userId = Integer.parseInt(request.getParameter("userId"));
			try {
				userRepository.delete(userId);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			forward = LIST_USER;
			try {
				request.setAttribute("users", userRepository.getAll());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT_OR_EDIT;
			int userId = Integer.parseInt(request.getParameter("userId"));
			User user;
			try {
				user = userRepository.findUserById(userId);
				request.setAttribute("user", user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else if (action.equalsIgnoreCase("listUser")) {
			forward = LIST_USER;
			try {
				request.setAttribute("users", userRepository.getAll());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (action.equalsIgnoreCase("listPhones")) {
			forward = LIST_PHONES;
			try {
				request.setAttribute("phones",phoneRepository.getAllPhonesByUser(Integer.parseInt(request.getParameter("userId"))));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else {
			forward = INSERT_OR_EDIT;
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User();
		Phone phone1 = new Phone(request.getParameter("phone1"),request.getParameter("typePhone1"));
		Phone phone2 = new Phone(request.getParameter("phone2"),request.getParameter("typePhone2"));
		
		phone1.setUser(user);
		phone2.setUser(user);
		
		user.setPhones(Arrays.asList(phone1,phone2));
		
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		

		String userId = request.getParameter("userId");
		System.out.println(userId);

		if (userId == null || userId.isEmpty()) {
			try {
				
				userRepository.addUser(user);
				phoneRepository.addPhone(phone1);
				phoneRepository.addPhone(phone2);
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			user.setUserId(Integer.parseInt(userId));
			try {
				userRepository.putUser(user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		
		
		RequestDispatcher view = request.getRequestDispatcher(LIST_USER);

		try {
			request.setAttribute("users", userRepository.getAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		view.forward(request, response);

	}
}