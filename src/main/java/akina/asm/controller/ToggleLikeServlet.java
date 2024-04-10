package akina.asm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ToggleLikeServlet")
public class ToggleLikeServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Nhận dữ liệu từ yêu cầu AJAX
		String videoId = request.getParameter("videoId");
		String action = request.getParameter("action");

		// Thực hiện xử lý, ví dụ: lưu trạng thái thích video vào cơ sở dữ liệu
		// Đây chỉ là ví dụ, bạn cần thay thế bằng xử lý thực tế của bạn

		// Gửi kết quả trả về cho AJAX
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		// Trong trường hợp này, chúng ta giả sử rằng video đã được thích nếu action là
		// "like"
		// Trong thực tế, bạn cần thay đổi dòng dưới để phản ánh logic của ứng dụng của
		// bạn
		if (action.equals("like")) {
			out.print("true");
		} else {
			out.print("false");
		}
	}
}
