package akina.asm.home;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import akina.asm.dao.FavoriteDAO;
import akina.asm.dao.FavoriteDAOImplements;
import akina.asm.dao.UserDAO;
import akina.asm.dao.UserDaoImplements;
import akina.asm.dao.VideoDAO;
import akina.asm.dao.VideoDAOImplements;
import akina.asm.entity.Favorite;
import akina.asm.entity.User;
import akina.asm.entity.Video;
import akina.asm.utils.CookieUtils;
import akina.asm.utils.JpaUtils;

@WebServlet({ "/nguyentuakina/home", "/nguyentuakina/storemovie", "/nguyentuakina/login", "/nguyentuakina/register",
		"/nguyentuakina/logout", "/nguyentuakina/forgotpassword", "/nguyentuakina/before", "/nguyentuakina/next" })
public class HomePages extends HttpServlet {
	private VideoDAO vDao = new VideoDAOImplements();
	private UserDAO uDao = new UserDaoImplements();
	private int offset = 0;

	@Override
	public void init() throws ServletException {
	}

	private FavoriteDAO fDao = new FavoriteDAOImplements();

	public String isLikedByUser(User user, String idVideo) {
		List<Favorite> likedByUsers = fDao.findByUsername(user.getId());
		for (Favorite f : likedByUsers) {
			if (f.getVideo().getId().equalsIgnoreCase(idVideo)) {
				return "display: none;"; // Nếu người dùng đã thích video này, trả về CSS để ẩn nút
			}
		}
		return "display: block;"; // Nếu người dùng chưa thích video này, trả về CSS để hiển thị nút
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (req.getServletPath().contains("home")) {
			this.doHome(req, resp);
		} else if (req.getServletPath().contains("storemovie")) {
			this.doStoreMovie(req, resp);
		} else if (req.getServletPath().contains("login")) {
			this.doLogin(req, resp);
		} else if (req.getServletPath().contains("logout")) {
			req.getSession().invalidate();
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/home");
		} else if (req.getServletPath().contains("register")) {
			this.doRegister(req, resp);
		} else if (req.getServletPath().contains("forgotpassword")) {
			this.doForgotPassword(req, resp);
		}
//		User user = (User) req.getSession().getAttribute("loggedInUser");
//		if (user != null) {
//			List<Favorite> likedByUsers = fDao.findByUsername(user.getId());
//			likedByUsers.forEach(f -> {
//				System.out.println(f.getVideo().getId());
//				System.out.println(isLikedByUser(user, f.getVideo().getId()));
//			});
//
//		}

//		else if (req.getServletPath().contains("before")) {
//			offset -= 6;
//			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/home#khampha");
//		} else if (req.getServletPath().contains("next")) {
//			offset += 6;
//			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/home#khampha");
//		}

		// Gọi forward chỉ nếu không có chuyển hướng đã thực hiện
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

	private void doHome(HttpServletRequest req, HttpServletResponse resp) {
		List<Video> vList = vDao.findAllSix(offset);
		req.setAttribute("vList", vList);
		req.setAttribute("view", "/views/layout/main.jsp");
	}

	private void doStoreMovie(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("view", "/views/layout/storemovie.jsp");
	}

	private void doLogin(HttpServletRequest req, HttpServletResponse resp) {
		this.listVideo(req, resp);
		String username = CookieUtils.get("username", req);
		String password = CookieUtils.get("password", req);

		req.setAttribute("username", username);
		req.setAttribute("password", password);
		if (req.getMethod().equalsIgnoreCase("post")) {
			username = req.getParameter("username");
			password = req.getParameter("password");
			req.setAttribute("username", username);
			if (username != null && password != null) {
				try {
					User user = uDao.findById(username);
					if (user != null && user.getPassword().equalsIgnoreCase(password)) {
						req.getSession().setAttribute("loggedInUser", user);
						int hours = (req.getParameter("remember") == null) ? 0 : 30 * 24;
						CookieUtils.add("username", username, hours, resp);
						CookieUtils.add("password", password, hours, resp);
						String path = (String) req.getSession().getAttribute("backUrl");
						if (path != null) {
							resp.sendRedirect(req.getContextPath() + path);
						} else {
							resp.sendRedirect(req.getContextPath() + "/nguyentuakina/home");
						}
						return;
					} else {
						req.setAttribute("checktt", "Thông tin bạn nhập không chính xác!");
					}
				} catch (Exception e) {
					req.setAttribute("checktt", "Đã xảy ra lỗi trong quá trình xác thực!");
					e.printStackTrace(); // In ra stack trace cho việc gỡ lỗi
				}
			} else {
				req.setAttribute("checktt", "Tên đăng nhập hoặc mật khẩu không được để trống!");
			}

		}
		req.setAttribute("view", "/views/layout/login.jsp");
	}

	private void doRegister(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		this.listVideo(req, resp);
		if (req.getMethod().equalsIgnoreCase("post")) {
			User user = new User();
			try {
				BeanUtils.populate(user, req.getParameterMap());
				req.setAttribute("user", user);
				String cfpassword = req.getParameter("cfpassword");
				if (user.getFullname().equals("")) {
					req.setAttribute("checkdk", "Họ và tên không được để trống!");
				} else if (user.getId().equals("")) {
					req.setAttribute("checkdk", "Tên đăng nhập không được để trống!");
				} else if (user.getEmail().equals("")) {
					req.setAttribute("checkdk", "Email không được để trống!");
				} else if (user.getPassword().equals("")) {
					req.setAttribute("checkdk", "Mật khẩu không được để trống!");
				} else if (cfpassword.equalsIgnoreCase("")) {
					req.setAttribute("checkdk", "Mật khẩu xác nhận không được để trống!");
				} else {
					if (!user.getPassword().equalsIgnoreCase(cfpassword)) {
						req.setAttribute("checkdk", "Mật khẩu không khớp!");
					} else {
						req.getSession().setAttribute("loggedInUser", user);
						uDao.create(user);
						resp.sendRedirect(req.getContextPath() + "/nguyentuakina/home");
						return;
					}
				}
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
		}
		req.setAttribute("view", "/views/layout/register.jsp");
	}

	private void doForgotPassword(HttpServletRequest req, HttpServletResponse resp) {
		if (req.getMethod().equalsIgnoreCase("post")) {
			String email = req.getParameter("email");
			User user = uDao.findByEmail(email);
			req.setAttribute("matkhauquen", user.getPassword());
		}
		req.setAttribute("view", "/views/layout/forgotpassword.jsp");
	}
}
