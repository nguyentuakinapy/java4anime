<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<form method="post"> 
	<div class="container" style="width: 500px; margin-top: 50px;">
		<h2 class="text-light text-center">Đăng ký</h2>
		<div class="form-floating mb-3">
			<input type="text" class="form-control" name="fullname"
				value="${user.fullname}" id="floatingInput"
				placeholder="name@example.com"> <label for="floatingInput">Họ
				và tên</label>
		</div>
		<div class="form-floating mb-3">
			<input type="text" class="form-control" name="id" id="floatingInput"
				value="${user.id}" placeholder="name@example.com"> <label
				for="floatingInput">Tên đăng nhập</label>
		</div>
		<div class="form-floating mb-3">
			<input type="email" class="form-control" id="floatingEmail"
				value="${user.email}" name="email" placeholder="name@example.com">
			<label for="floatingEmail">Email</label>
		</div>
		<div class="form-floating mb-3">
			<input type="password" class="form-control" id="floatingPassword"
				value="${user.password}" name="password" placeholder="Password">
			<label for="floatingPassword">Mật khẩu</label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" id="floatingCfPassword"
				name="cfpassword" value="${cfpassword}" placeholder="CfPassword">
			<label for="floatingCfPassword">Xác nhận mật khẩu</label>
		</div>
		<div class="row mt-3 mx-2">
			<div class="col">
				<input type="checkbox" class="form-check-input" id="rememberme">
				<label for="rememberme" name="rememberme"
					class="form-check-label text-light">Nhớ tài khoản ?</label>
			</div>
			<div class="col text-end">
				<a href="${url}forgotpassword" class="quenmk text-decoration-none">Quên mật khẩu?</a>
			</div>
		</div>
		<h6 class="text-center text-danger fw-bold">${checkdk}</h6>
		<div class="mt-2 text-center">
			<button class="btn btn-info mb-3 px-5">Đăng ký</button>
			<br> <a class="text-decoration-none quenmk" href="${url}login">Bạn
				đã có tài khoản?</a>
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
		<div class="col">
			<div class="card img-hot" style="width: 12rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
					<h5 class="card-title my-0" style="font-size: 1rem; color: white;">Oroka
						na Tenshi wa Akuma to Odoru</h5>
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
		<div class="col">
			<div class="card img-hot" style="width: 12rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-SCwnvRoP0m.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
					<h5 class="card-title my-0" style="font-size: 1rem; color: white;">Nguyệt
						đao dị giới</h5>
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
		<div class="col">
			<div class="card img-hot" style="width: 12rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2022/10/05/animevsub-PeZHKapawP.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
					<h5 class="card-title my-0" style="font-size: 1rem; color: white;">Ta
						muốn trở thành chúa tể bóng tối</h5>
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
		<div class="col">
			<div class="card img-hot" style="width: 12rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-zUV0zmOUfD.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
					<h5 class="card-title my-0" style="font-size: 1rem; color: white;">Boku
						no Kokoro no Yabai Yatsu Season 2</h5>
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
		<div class="col">
			<div class="card img-hot" style="width: 12rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2024/01/07/animevsub-BvIgqp9yZV.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
					<h5 class="card-title my-0" style="font-size: 1rem; color: white;">Mashle
						2nd Season</h5>
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
		<div class="col">
			<div class="card img-hot" style="width: 12rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2024/01/06/animevsub-hFzXC2v51y.png"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
					<h5 class="card-title my-0" style="font-size: 1rem; color: white;">Solo
						Leveling - Tôi thăng cấp một mình</h5>
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
	</div>
</div>