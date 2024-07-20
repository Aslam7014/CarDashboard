package com.jsp.Car_Management_System;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletecar")
public class DeleteCar extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int carId = Integer.parseInt(req.getParameter("carId"));
		
		//JDBC LOGICS 
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_car_management_system?user=root&password=root");
			
			PreparedStatement pst = conn.prepareStatement("DELETE FROM car WHERE carId=?");
			pst.setInt(1, carId);
			
			 pst.executeUpdate();
			
			
//			req.setAttribute("resultSet", rs);
//			RequestDispatcher rd = req.getRequestDispatcher("displayAllCarsCar.jsp");
//			rd.forward(req, resp);
//			
			resp.sendRedirect("displayAllCars");
					
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
		{
				if(conn!=null) {
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
		
	}

}


