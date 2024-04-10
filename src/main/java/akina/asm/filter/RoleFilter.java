package akina.asm.filter;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import akina.asm.entity.User;

@WebFilter(urlPatterns = "/views/homelayout.jsp", dispatcherTypes = DispatcherType.FORWARD)
public class RoleFilter implements Filter {
	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		User user = (User) req.getSession().getAttribute("loggedInUser");
		if (user != null && user.isAdmin()) {
			req.setAttribute("hfphim", "admin/managevideo");
			req.setAttribute("phim", "Edit Video");
			req.setAttribute("hffavorite", "admin/manageuser");
			req.setAttribute("yt", "Edit User");
			System.out.println("Tao là admin");
		} else {
			req.setAttribute("hfphim", "storemovie");
			req.setAttribute("phim", "Kho phim");
			req.setAttribute("hffavorite", "favorite");
			req.setAttribute("yt", "Yêu thích");
			System.out.println("Tao là user");
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
