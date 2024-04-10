package akina.asm.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import akina.asm.dao.FavoriteDAO;
import akina.asm.dao.FavoriteDAOImplements;
import akina.asm.entity.Favorite;
import akina.asm.entity.User;
import akina.asm.utils.JpaUtils;

@WebServlet({ "/nguyentuakina/favorite", "/nguyentuakina/like/*", "/nguyentuakina/maynhincaichogi/*",
		"/nguyentuakina/share/*" })
public class FavoriteServlet extends HttpServlet {
	private FavoriteDAO fDao = new FavoriteDAOImplements();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User loggedInUser = (User) req.getSession().getAttribute("loggedInUser");
		if (req.getServletPath().contains("favorite")) {
			doFavorite(req, resp, loggedInUser);
		} else if (req.getServletPath().contains("like")) {
			doLike(req, resp, loggedInUser);
		} else if (req.getServletPath().contains("maynhincaichogi")) {
			fDao.deleteById(Integer.parseInt(req.getPathInfo().substring(1)));
			System.out.println(req.getPathInfo().substring(1));
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/favorite");
			return;
		} else if (req.getServletPath().contains("share")) {
			doShare(req, resp);
		}

		if (!resp.isCommitted()) {
			req.getRequestDispatcher("/views/homelayout.jsp").forward(req, resp);
		}
	}

	private void doFavorite(HttpServletRequest req, HttpServletResponse resp, User user) throws IOException {
		if (user != null) {
		req.setAttribute("fList", fDao.findByUsername(user.getId()));
		} else {
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/login");
			return;
		}
		req.setAttribute("view", "/views/user/favorite.jsp");
	}

	private void doLike(HttpServletRequest req, HttpServletResponse resp, User loggedInUser) throws IOException {
		if (loggedInUser != null) {
			String videoId = req.getPathInfo().substring(1);
			List<Favorite> fUser = loggedInUser.getFavorites();
			for (Favorite favorite : fUser) {
				if (favorite.getVideo().getId().equals(videoId)) {
					resp.sendRedirect(req.getContextPath() + "/nguyentuakina/favorite");
					return;
				}
			}
			Favorite favorite = new Favorite();
			favorite.getVideo().setId(videoId);
			favorite.getUser().setId(loggedInUser.getId());
			fDao.create(favorite);
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/favorite");
			return;
		} else {
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/login");
			return;
		}
	}

	private void doShare(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub

	}
}
