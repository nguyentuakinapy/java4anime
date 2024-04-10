package akina.asm.admin;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import akina.asm.dao.UserDAO;
import akina.asm.dao.UserDaoImplements;
import akina.asm.dao.VideoDAO;
import akina.asm.dao.VideoDAOImplements;
import akina.asm.entity.User;
import akina.asm.entity.Video;

@WebServlet({ "/nguyentuakina/admin/manageuser", "/nguyentuakina/admin/createuser", "/nguyentuakina/admin/updateuser/*",
		"/nguyentuakina/admin/deleteuser/*", "/nguyentuakina/admin/edituser/*" })
public class ManageUserServlet extends HttpServlet {
	private UserDAO uDao = new UserDaoImplements();
	private VideoDAO vDao = new VideoDAOImplements();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.listVideoSix(req, resp);
		List<User> uList = uDao.findAll();
		req.setAttribute("uList", uList);

		User user = new User();
		try {
			BeanUtils.populate(user, req.getParameterMap());
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (req.getServletPath().contains("manageuser")) {
			req.setAttribute("view", "/views/admin/manageUser.jsp");
		} else if (req.getServletPath().contains("createuser")) {
			uDao.create(user);
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/admin/manageuser");
			return;
		} else if (req.getServletPath().contains("updateuser")) {
			uDao.update(user);
			req.setAttribute("u", vDao.findById(req.getPathInfo().substring(1)));
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/admin/manageuser");
			return;
		} else if (req.getServletPath().contains("deleteuser")) {
			String idvd = req.getPathInfo().substring(1);
			uDao.deleteById(idvd);
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/admin/manageuser");
			return;
		} else if (req.getServletPath().contains("edituser")) {
			req.setAttribute("u", uDao.findById(req.getPathInfo().substring(1)));
			req.setAttribute("view", "/views/admin/manageUser.jsp");
		}
		if (!resp.isCommitted()) {
			req.getRequestDispatcher("/views/homelayout.jsp").forward(req, resp);
		}
	}

	private void doManageUser(HttpServletRequest req, HttpServletResponse resp) {

	}

	private void listVideoSix(HttpServletRequest req, HttpServletResponse resp) {
		List<Video> vList = vDao.findAllSix(0);
		req.setAttribute("vList", vList);
	}
}
