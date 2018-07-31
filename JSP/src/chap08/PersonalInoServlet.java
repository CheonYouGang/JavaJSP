package chap08;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonalInoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PersonInfo obj = new PersonInfo();
		obj.setName("이정호");
		obj.setGender('남');
		obj.setAge(24);
		req.setAttribute("pinfo", obj);
		RequestDispatcher dispatcher =
				req.getRequestDispatcher(
				"/chap08/CustomerInfoViewer.jsp");
		dispatcher.forward(req, resp);
	}

}
