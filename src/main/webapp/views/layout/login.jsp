<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<form method="post">
	<div class="container" style="width: 500px; margin-top: 150px;">
		<h2 class="text-light text-center">Đăng nhập</h2>
		<div class="form-floating mb-3">
			<input type="text" class="form-control" id="floatingInput"
				name="username" value="${username}" placeholder="name@example.com">
			<label for="floatingInput">Tên đăng nhập</label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" id="floatingPassword"
				name="password" value="${password}" placeholder="Password">
			<label for="floatingPassword">Mật khẩu</label>
		</div>
		<div class="row mt-3 mx-2">
			<div class="col">
				<input type="checkbox" name="remember" class="form-check-input"
					id="rememberme"> <label for="rememberme"
					class="form-check-label text-light">Nhớ tài khoản ?</label>
			</div>
			<div class="col text-end">
				<a href="${url}forgotpassword" class="quenmk text-decoration-none">Quên
					mật khẩu?</a>
			</div>

		</div>
		<h6 class="text-center text-danger fw-bold">${checktt}</h6>
		<div class="mt-2 text-center">
			<button class="btn btn-danger mb-3">Đăng nhập</button>
			<br> <a class="text-decoration-none quenmk"
				href="${url}register">Bạn chưa có tài khoản?</a>
		</div>
	</div>
</form>
<div class="container" style="margin-top: 200px;" id="khampha">
	<div class="my-2">
		<div class="row">
			<div class="col">
				<h1 class="h3 text-light mt-4">Hiện đang thịnh hành</h1>
				<div class="d-flex">
					<select class="form-select bg-dark text-light me-3"
						style="width: 25%;" aria-label="Default select example">
						<option selected value="1">Việt Nam</option>
						<option value="2">Toàn cầu</option>
					</select> <select class="form-select bg-dark text-light" style="width: 25%;"
						aria-label="Default select example">
						<option selected value="1">Anime</option>
						<option value="2">Phim</option>
					</select>
				</div>
			</div>
			<div class="col text-end">
				<h1 class="h3 text-danger mt-4">Xem thêm</h1>
				<button class="btn btn-dark border-light me-3 px-3">
					<i class="bi bi-caret-left-fill"></i>
				</button>
				<button class="btn btn-dark border-light px-3">
					<i class="bi bi-caret-right-fill"></i>
				</button>
			</div>
		</div>
	</div>
	<div class="row justify-content-center d-flex m-auto">
		<c:forEach var="v" items="${vList}">
			<div class="col">
				<div class="card img-hot" style="width: 12rem; position: relative;">
					<img src="${v.poster}" class="card-img-top" alt="..."></a>
					<div
						class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
						<h5 class="card-title my-0" style="font-size: 1rem; color: white;">
							<a href="${url}detail/${v.id}"
								class="text-decoration-none title-th">${v.title}</a>
						</h5>
						<div class="d-flex my-0">
							<button
								class="btn btn-transparent btn-sm me-2 text-primary fw-bold">
								<i class="bi bi-hand-thumbs-up-fill"></i>
							</button>
							<button class="btn btn-transparent btn-sm text-primary fw-bold">
								<i class="bi bi-share-fill"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>