<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<div class="d-flex">
	<div class="container justify-content-center container-top">
		<!-- NAV -->
		<nav class="navbar navbar-expand-lg header mt-5">
			<div class="container">
				<a class="navbar-brand logo-filter" style="width: 130px;"
					href="${url}home"><img class="w-100"
					src="${pageContext.request.contextPath}/images/Akinalmao.vn.png"
					alt=""></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse mt-4"
					id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link"
							href="${url}${hfphim}" role="button" aria-expanded="false"> <i
								class="bi bi-collection-play-fill me-2"></i>${phim}
						</a></li>
						<li class="nav-item dropdown"><a class="nav-link"
							href="${url}${hffavorite}"> <i
								class="bi bi-1-circle-fill me-2"></i>${yt}
						</a></li>
						<li class="nav-item dropdown" data-bs-theme="dark"><a
							class="nav-link dropdown-toggle" role="button"
							id="dropdownMenuButtonDark" data-bs-toggle="dropdown"
							aria-expanded="false"> <i class="bi bi-tags-fill me-2"></i>Thể
								loại
						</a>
							<div class="dropdown-menu border-light"
								aria-labelledby="dropdownMenuButtonDark">
								<ul class="d-flex list-unstyled">
									<li><a class="dropdown-item" href="">Action</a></li>
									<li><a class="dropdown-item" href="">Adventure</a></li>
									<li><a class="dropdown-item" href="">Comedy</a></li>

								</ul>
								<hr class="dropdown-divider">
								<ul class="d-flex list-unstyled">
									<li><a class="dropdown-item" href="">Drama</a></li>
									<li><a class="dropdown-item" href="">Ecchi</a></li>
									<li><a class="dropdown-item" href="">Fantasy</a></li>
								</ul>
								<hr class="dropdown-divider">
								<ul class="d-flex list-unstyled">
									<li><a class="dropdown-item" href="">Game</a></li>
									<li><a class="dropdown-item" href="">Harem</a></li>
									<li><a class="dropdown-item" href="">Historical</a></li>
								</ul>
								<hr class="dropdown-divider">
								<ul class="d-flex list-unstyled">
									<li><a class="dropdown-item" href="">Dementia</a></li>
									<li><a class="dropdown-item" href="">Demons</a></li>
									<li><a class="dropdown-item" href="">Cartoon</a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a class="nav-link a"
							href="gioithieu.html"><i class="bi bi-patch-question me-2"></i>Akina</a>
						</li>
					</ul>
					<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
						<form class="d-flex me-2" role="search">
							<input class="form-control me-2 an1" type="search"
								placeholder="Tìm kiếm" aria-label="Search" list="items">
							<datalist id="items">
								<option value="Ta muốn trở thành chúa tể bóng tối.">
								<option value="Solo Leveling - Tôi thăng cấp một mình.">
								<option value="Lớp học đề cao thực lực.">
								<option value="Nguyệt đao dị giới.">
								<option value="Mashle">
								<option value="Chuyển sinh thành Slime">
								<option value="Doraemon">
								<option value="One Piece">
								<option value="Black Clover">
								<option value="Thám tử lừng danh Conan">
								<option value="Jujutsu Kaisen 2nd Season">
								<option value="Danmachi">
							</datalist>
							<button class="btn btn-outline-light" type="submit">
								<i class="bi bi-search"></i>
							</button>
						</form>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle a" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <i
								class="bi bi-person-circle me-2"></i>${ttdn}
						</a>
							<ul class="dropdown-menu">
								<c:if test="${ttdn == 'Tài khoản'}">
									<li><a class="dropdown-item" href="${url}register">Đăng
											ký</a></li>
									<li><a class="dropdown-item" href="${url}login">Đăng
											nhập</a></li>
									<li><a class="dropdown-item" href="${url}forgotpassword">Quên
											mật khẩu</a></li>
									<li>
								</c:if>
								<c:if test="${ttdn != 'Tài khoản'}">
									<li><a class="dropdown-item" href="${url}logout">Đăng
											xuất</a></li>
									<li><a class="dropdown-item" href="">Đổi mật khẩu</a></li>
									<li><a class="dropdown-item" href="">Cập nhật tài
											khoản</a></li>
								</c:if>
							</ul>
						<li>
							<button type="button" class="btn btn-light position-relative">
								<i class="bi bi-bell"></i> <span
									class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
									0+ <span class="visually-hidden">ád</span>
								</span>
							</button>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>