<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<div class="container">
	<form action="" method="post">
		<div class="m-auto" style="width: 60%">
			<div class="mt-5">
				<h2 class="text-primary text-center fw-bold mt-3">User Manager</h2>
				<h6 class="text-center text-light fw-bold">Nguyễn Tú Akina</h6>
			</div>
			<div class="text-center">
				<button class="btn btn-primary m-2 px-4"
					formaction="${url}admin/createuser">Create</button>
				<button class="btn btn-warning m-2 px-4"
					formaction="${url}admin/updateuser/${u.id}">Update</button>
				<button class="btn btn-danger m-2 px-4"
					formaction="${url}admin/deleteuser/${u.id}">Delete</button>
				<button class="btn btn-success m-2 px-4">Excel</button>
			</div>
			<div>
				<div class="mx-4">
					<label class="form-label text-light m-0">ID User</label>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="bi bi-person"></i></span> <input type="text" name="id"
							value="${u.id}" class="form-control" placeholder="Tên đăng nhập"
							aria-label="IDVideo" aria-describedby="basic-addon1">
					</div>
				</div>
				<div class="mx-4">
					<label class="form-label text-light m-0">Mật khẩu</label>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="bi bi-key"></i></span> <input type="text" name="password"
							value="${u.password}" class="form-control" placeholder="Mật khẩu"
							aria-label="Title" aria-describedby="basic-addon1">
					</div>
				</div>
				<div class="mx-4">
					<label class="form-label text-light m-0">Họ và tên</label>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="bi bi-person-badge-fill"></i></span> <input type="text"
							name="fullname" value="${u.fullname}" class="form-control"
							placeholder="Họ và tên" aria-label="fullname"
							aria-describedby="basic-addon1">
					</div>
				</div>
				<div class="mx-4">
					<label class="form-label text-light m-0">Email</label>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="bi bi-envelope"></i></span> <input type="text"
							class="form-control" placeholder="Email" name="email"
							value="${u.email}" aria-label="email"
							aria-describedby="basic-addon1">
					</div>
				</div>
				<div class="mx-4">
					<label class="form-label text-light m-0">Vai trò</label>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1"><i
							class="bi bi-1-circle"></i></span> <input type="text"
							class="form-control" placeholder="Vai trò" name="admin"
							value="${u.admin}" aria-label="vaitro"
							aria-describedby="basic-addon1">
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="">
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th width="10"></th>
						<th width="5">STT</th>
						<th width="20">ID User</th>
						<th width="120">Mật khẩu</th>
						<th width="30">Họ và tên</th>
						<th width="320">Email</th>
						<th width="150">Vai trò</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${uList}" varStatus="loop">
						<tr>
							<td class="text-decoration"><a
								class="text-black text-decoration-none"
								href="${url}admin/edituser/${u.id}">EDIT</a></td>
							<td>${loop.index + 1}</td>
							<td>${u.id}</td>
							<td>${u.password}</td>
							<td>${u.fullname}</td>
							<td>${u.email}</td>
							<td>${u.admin ? 'Admin' : 'User'}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
</div>

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