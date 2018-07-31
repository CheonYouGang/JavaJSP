import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ResultServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest requset, HttpServletResponse response) 
			throws ServletException, IOException {
		HttpSession session = requset.getSession();
		String food = (String) session.getAttribute("Food");
		String animal = requset.getParameter("animal");
		session.invalidate();

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>성격 테스트</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<h3>성격테스트</h3>");

		out.printf("당신은 %s와 $s를 좋아하는 성격입니다.", food, animal);

		out.println("</BODY>");
		out.println("</HTML>");
	}
}
