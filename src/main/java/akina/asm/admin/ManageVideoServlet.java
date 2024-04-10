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

import akina.asm.dao.VideoDAO;
import akina.asm.dao.VideoDAOImplements;
import akina.asm.entity.Video;

@WebServlet({ "/nguyentuakina/admin/managevideo", "/nguyentuakina/admin/create", "/nguyentuakina/admin/update/*",
		"/nguyentuakina/admin/delete/*", "/nguyentuakina/admin/editvd/*" })
public class ManageVideoServlet extends HttpServlet {
	private VideoDAO vDao = new VideoDAOImplements();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.listVideoSix(req, resp);
		List<Video> vList = vDao.findAll();
		req.setAttribute("listVD", vList);

		Video vd = new Video();
		try {
			BeanUtils.populate(vd, req.getParameterMap());
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (req.getServletPath().contains("managevideo")) {
			req.setAttribute("view", "/views/admin/manageVideo.jsp");
		} else if (req.getServletPath().contains("create")) {
			vDao.create(vd);
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/admin/managevideo");
			return;
		} else if (req.getServletPath().contains("update")) {
			vDao.update(vd);
			req.setAttribute("vd", vDao.findById(req.getPathInfo().substring(1)));
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/admin/managevideo");
			return;
		} else if (req.getServletPath().contains("delete")) {
			String idvd = req.getPathInfo().substring(1);
			vDao.deleteById(idvd);
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/admin/managevideo");
			return;
		} else if (req.getServletPath().contains("edit")) {
			req.setAttribute("vd", vDao.findById(req.getPathInfo().substring(1)));
			req.setAttribute("view", "/views/admin/manageVideo.jsp");
		}
		if (!resp.isCommitted()) {
			req.getRequestDispatcher("/views/homelayout.jsp").forward(req, resp);
		}
	}

	private void listVideoSix(HttpServletRequest req, HttpServletResponse resp) {
		List<Video> vList = vDao.findAllSix(0);
		req.setAttribute("vList", vList);
	}

}
