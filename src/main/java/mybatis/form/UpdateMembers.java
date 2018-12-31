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

public class UpdateMembers extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String content = request.getParameter("content");
		String id = request.getParameter("id");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("pass", pass);
		map.put("content", content);
		map.put("id", id);
		System.out.println(map);

		DBCon con = new DBCon();
		SqlSessionFactory sqlSessionFactory = con.getCon();
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("members.updateMembers", map);
		System.out.println(cnt);
		if (cnt == 1) {
			List<HashMap<String, Object>> list = session.selectList("members.newMembersInfo", map);
			request.setAttribute("list", list);
			RequestDispatcher dis = request.getRequestDispatcher("membersInfo.jsp");
			dis.forward(request, response);
			System.out.println(list);
		} else {

		}
	}

}
