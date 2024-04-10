//package akina.asm.filter;
//
//import java.io.IOException;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import akina.asm.entity.User;
//
//@WebFilter({ "/nguyentuakina/favorite" })
//public class AuthFilter implements Filter {
//	@Override
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//			throws IOException, ServletException {
//		HttpServletRequest req = (HttpServletRequest) request;
//		HttpServletResponse resp = (HttpServletResponse) response;
//		HttpSession session = req.getSession();
//		User user = (User) session.getAttribute("loggedInUser");
//		if (user == null) {
//			session.setAttribute("backUrl", req.getServletPath());
//			req.setAttribute("checktt", "Vui lòng đăng nhập");
////			resp.sendRedirect(req.getContextPath() + "/nguyentuakina/login");
//			req.getRequestDispatcher("/nguyentuakina/login").forward(request, response);
//			return;
//		} else {
//			chain.doFilter(request, response);
//		}
//	}
//
//	@Override
//	public void init(FilterConfig filterConfig) throws ServletException {
//	}
//
//	@Override
//	public void destroy() {
//	}
//}