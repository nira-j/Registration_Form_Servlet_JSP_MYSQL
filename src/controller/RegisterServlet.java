package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.RegisterDao;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String contact=request.getParameter("contact");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String college =request.getParameter("college");
		String dob=request.getParameter("dob");
		String password=request.getParameter("password");
		
		Student stu=new Student();
		stu.setName(name);
		stu.setEmail(email);
		stu.setGender(gender);
		stu.setCity(city);
		stu.setCollege(college);
		stu.setContact(contact);
		stu.setState(state);
		stu.setPassword(password);
		stu.setDob(dob);
		
		
		RegisterDao register;
		try {
			register = new RegisterDao();
			String status=register.registerStudent(stu);
			request.getSession().setAttribute("status", status);
			response.sendRedirect("index.jsp");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
