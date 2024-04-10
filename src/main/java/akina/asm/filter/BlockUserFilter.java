package akina.asm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import akina.asm.entity.User;

@WebFilter(urlPatterns = { "/nguyentuakina/admin/*" })
public class BlockUserFilter implements Filter {
	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		User user = (User) req.getSession().getAttribute("loggedInUser");
		if (user == null) {
			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/home");
		} else {
			if (!user.isAdmin()) {
				resp.sendRedirect(req.getContextPath() + "/nguyentuakina/home");
			}
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
