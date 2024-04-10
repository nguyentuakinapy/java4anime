
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

import akina.asm.entity.User;

@WebFilter(urlPatterns = "/*")
public class SetUserFilter implements Filter {
	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		User loggedInUser = (User) req.getSession().getAttribute("loggedInUser");
		if (loggedInUser != null) {
			req.setAttribute("ttdn", loggedInUser.getFullname());
		} else {
			req.setAttribute("ttdn", "Tài khoản");
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
