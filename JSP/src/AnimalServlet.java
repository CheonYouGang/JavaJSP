import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//성격테스트 2번째 화면
public class AnimalServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest requset, HttpServletResponse response) 
			throws ServletException, IOException {
		String food = requset.getParameter("Food");
		HttpSession session = requset.getSession();
		session.setAttribute("Food", food);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>성격 테스트</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<h3>좋아하는 동물은?</h3>");
		out.println("<form action=/JSP/result>");
		out.println("<input type=text name=Food>");
		out.println("<input type=submit value='확인'");
		out.println("</form>");
		out.println("</BODY>");
		out.println("</HTML>");
	}

}
