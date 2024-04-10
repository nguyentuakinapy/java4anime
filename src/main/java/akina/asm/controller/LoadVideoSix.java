package akina.asm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import akina.asm.dao.VideoDAO;
import akina.asm.dao.VideoDAOImplements;
import akina.asm.entity.Video;

@WebServlet("/nguyentuakina/loadsixvideo")
public class LoadVideoSix extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO vdDao = new VideoDAOImplements();
		List<Video> list = vdDao.findAllSix(Integer.parseInt(req.getParameter("amount")));
		PrintWriter out = resp.getWriter();
	
		for (Video v : list) {
			out.println("<div class=\"col mt-2 listvdLoad\"><div class=\"card img-hot\" style=\"width: 12rem; position: relative;\">\r\n"
					+ "					<img src=\""+v.getPoster()+"\" class=\"card-img-top\" style=\"height: 250px\"\r\n"
					+ "						alt=\"...\">\r\n"
					+ "					<div\r\n"
					+ "						class=\"card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot\">\r\n"
					+ "						<h5 class=\"card-title my-0\" style=\"font-size: 1rem; color: white;\">\r\n"
					+ "							<a href=\"${url}detail/"+v.getId()+"\"\r\n"
					+ "								class=\"text-decoration-none title-th\">"+v.getTitle()+"</a>\r\n"
					+ "						</h5>\r\n"
					+ "						<div class=\"d-flex my-0 btLikeShare\">\r\n"
					+ "							<button formaction=\"${url}like/"+v.getId()+"\"\r\n"
					+ "								class=\"btn btn-transparent btn-sm me-2 text-danger fw-bold\">\r\n"
					+ "								<i class=\"bi bi-hand-thumbs-up-fill\"></i>\r\n"
					+ "							</button>\r\n"
					+ "							<button formaction=\"${url}share/"+v.getId()+"\"\r\n"
					+ "								class=\"btn btn-transparent btn-sm text-primary fw-bold\">\r\n"
					+ "								<i class=\"bi bi-share-fill\"></i>\r\n"
					+ "							</button>\r\n"
					+ "						</div>\r\n"
					+ "						<div class=\"btnXemNgay\">\r\n"
					+ "							<a href=\"${url}watchvideo/"+v.getId()+"\"> <btn\r\n"
					+ "									class=\"btn btn-warning\">Xem Ngay</btn>\r\n"
					+ "							</a>\r\n"
					+ "						</div>\r\n"
					+ "					</div>\r\n"
					+ "				</div></div>");
		}
	}

}
