package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dao.MemberDto;

public class MemDeleteProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			request.setCharacterEncoding("utf-8");
			String id = (String) session.getAttribute("id");
			String password = request.getParameter("chkpassword");
			System.out.println(id+password);
			MemberDao dao = MemberDao.getInstance();
			int result = dao.delete(id,password);
			
			System.out.println(result);
			if(result != 0) {
				session.invalidate();//세션끊는거
			}
			System.out.println("deleteProAction resule"+request.getParameter("result"));
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "member/memDelete.jsp";
	}

}
