package mybatis.form;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class LoginHome extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pass", pass);
		System.out.println("로그인 정보 : " + map);

		DBCon con = new DBCon();
		SqlSessionFactory sqlSessionFactory = con.getCon();
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("members.confirmMembers", map);
		System.out.println("로그인 계정 확인 : " + cnt + " / " + session.insert("members.confirmMembers", map));

		List<HashMap<String, Object>> list = session.selectList("members.confirmMembers", map);

		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher("membersInfo.jsp");
		System.out.println(list);
		dis.forward(request, response);
	}

}
