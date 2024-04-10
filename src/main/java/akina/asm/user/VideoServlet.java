package akina.asm.user;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import akina.asm.dao.FavoriteDAO;
import akina.asm.dao.FavoriteDAOImplements;
import akina.asm.dao.VideoDAO;
import akina.asm.dao.VideoDAOImplements;
import akina.asm.entity.Favorite;
import akina.asm.entity.User;
import akina.asm.entity.Video;
import akina.asm.utils.JpaUtils;

@WebServlet({ "/nguyentuakina/detail/*", "/nguyentuakina/watchvideo/*", "/nguyentuakina/randomanime" })
public class VideoServlet extends HttpServlet {
	private VideoDAO vDao = new VideoDAOImplements();
	private FavoriteDAO fDao = new FavoriteDAOImplements();
	private Random random = new Random();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		if (req.getServletPath().contains("detail")) {
			this.doDetail(req, resp);
		} else if (req.getServletPath().contains("watchvideo")) {
			this.doWatchVideo(req, resp);
		} else if (req.getServletPath().contains("randomanime")) {
			this.doRandomAnime(req, resp);
		}
		if (!resp.isCommitted()) {
			req.getRequestDispatcher("/views/homelayout.jsp").forward(req, resp);
		}
	}

	@Override
	public void destroy() {
		JpaUtils.close();
	}

	private void listVideo(HttpServletRequest req, HttpServletResponse resp) {
		List<Video> vList = vDao.findAll();
		req.setAttribute("vList", vList);
	}

	private void doDetail(HttpServletRequest req, HttpServletResponse resp) {
		User user = (User) req.getSession().getAttribute("loggedInUser");
		String videoId = req.getPathInfo().substring(1);
		Video video = vDao.findById(videoId);
		this.listVideo(req, resp);
		if (user != null) {
			req.setAttribute("fList", fDao.findByUsername(user.getId()));
		} else {
			req.setAttribute("fList", fDao.findAll());
		}

		req.setAttribute("video", video);
		req.setAttribute("view", "/views/user/detail.jsp");
	}

	private void doWatchVideo(HttpServletRequest req, HttpServletResponse resp) {
		User user = (User) req.getSession().getAttribute("loggedInUser");
		String videoId = req.getPathInfo().substring(1);
		Video video = vDao.findById(videoId);
		if (user != null) {
			req.setAttribute("fList", fDao.findByUsername(user.getId()));
		} else {
			req.setAttribute("fList", fDao.findAll());
		}
		req.setAttribute("video", video);
		int viewVd = video.getViews() + 1;
		video.setViews(viewVd);
		vDao.update(video);
		req.setAttribute("view", "/views/user/watchvideo.jsp");
	}

	private void doRandomAnime(HttpServletRequest req, HttpServletResponse resp) {
		List<Video> vList = vDao.findAll();
		Video video = vList.get(random.nextInt(vList.size()));
		req.setAttribute("video", video);
		req.setAttribute("view", "/views/user/watchvideo.jsp");
	}
}
