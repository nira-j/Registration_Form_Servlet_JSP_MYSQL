package dao;
import java.sql.*;

import bean.Student;
import bean.StudentLogin;


public class RegisterDao {
	Connection conn;
	public RegisterDao() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mydb";
		conn=DriverManager.getConnection(url,"root","root");
		
	}
	
	public String registerStudent(Student student) throws SQLException {
		
		String sql="INSERT INTO student (name,email,gender,contact,state,city,college,dob,password) VALUES(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst=this.conn.prepareStatement(sql);
		pst.setString(1, student.getName());
		pst.setString(2, student.getEmail());
		pst.setString(3, student.getGender());
		pst.setString(4, student.getContact());
		pst.setString(5, student.getState());
		pst.setString(6, student.getCity());
		pst.setString(7, student.getCollege());
		pst.setString(8, student.getDob());
		pst.setString(9, student.getPassword());
		int result=pst.executeUpdate();
		if (result > 0) {
			return "success";	
		}
		else {
			return "fail";
		}	
	}
	
	public int loginStudent(String name,String pass) throws SQLException {
		int res=0;
		String sql="SELECT * FROM student WHERE name=? and password=?";
		PreparedStatement pst= this.conn.prepareStatement(sql);
		pst.setString(1, name);
		pst.setString(2, pass);
		ResultSet rs=pst.executeQuery();
		if (rs.next()) {
			res=rs.getInt("id");
		}
		return res;

	}
	public Student getProfile(String id) throws SQLException {
		Student student=new Student();
		String sql="SELECT * FROM student WHERE id=?";
		PreparedStatement pst= this.conn.prepareStatement(sql);
		pst.setString(1, id);
		ResultSet rs=pst.executeQuery();
		while(rs.next()) {
			student.setName(rs.getString("name"));
			student.setEmail(rs.getString("email"));
			student.setGender(rs.getString("gender"));
			student.setContact(rs.getString("contact"));
			student.setState(rs.getString("state"));
			student.setCity(rs.getString("city"));
			student.setCollege(rs.getString("college"));
			student.setDob(rs.getString("dob"));
//			student.setPassword(rs.getString("password"));
		}
		return student;
	}
}
