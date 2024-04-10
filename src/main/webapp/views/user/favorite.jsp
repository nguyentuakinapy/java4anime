<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<div class="container" style="margin-top: 100px">
	<h3 class="text-light text-center fw-bold">Video yêu thích của bạn</h3>
	<div class="row justify-content-center">
		<c:forEach var="f" items="${fList}">
			<c:set var="v" value="${f.video}"></c:set>
			<div class="mt-2 d-flex col">
				<div class="card img-hot" style="width: 12rem; position: relative;">
					<img src="${v.poster}" class="card-img-top" style="height: 250px"
						alt="...">
					<div
						class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
						<h5 class="card-title my-0" style="font-size: 1rem; color: white;">
							<a href="${url}detail/${v.id}"
								class="text-decoration-none title-th">${v.title}</a>
						</h5>
						<div class="d-flex my-0 btLikeShare">
							<a href="${url}maynhincaichogi/${f.id}"
								class="btn btn-transparent btn-sm me-2 text-danger fw-bold">
								<i class="bi bi-hand-thumbs-down-fill"></i>
							</a> <a href="${url}share/${v.id}"
								class="btn btn-transparent btn-sm text-primary fw-bold"> <i
								class="bi bi-share-fill"></i>
							</a>
						</div>
						<div class="btnXemNgay">
							<a href="${url}watchvideo/${v.id}">
								<button class="btn btn-warning">Xem Ngay</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="row">
		<div class="col-9">
			<div class="my-2">
				<div class="row">
					<div class="col">
						<h1 class="h3 text-light mt-4">Có thể bạn sẽ thích</h1>
						<div class="d-flex">
							<select class="form-select bg-dark text-light me-3"
								style="width: 25%;" aria-label="Default select example">
								<option selected value="1">Việt Nam</option>
								<option value="2">Toàn cầu</option>
							</select> <select class="form-select bg-dark text-light"
								style="width: 25%;" aria-label="Default select example">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
						<img
							src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
							class="card-img-top" alt="...">
						<div
							class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
							<h5 class="card-title my-0"
								style="font-size: 1rem; color: white;">Oroka na Tenshi wa
								Akuma to Odoru</h5>
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
						<img
							src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-SCwnvRoP0m.jpg"
							class="card-img-top" alt="...">
						<div
							class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
							<h5 class="card-title my-0"
								style="font-size: 1rem; color: white;">Nguyệt đao dị giới</h5>
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
						<img
							src="https://cdn.animevietsub.io/data/poster/2022/10/05/animevsub-PeZHKapawP.jpg"
							class="card-img-top" alt="...">
						<div
							class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
							<h5 class="card-title my-0"
								style="font-size: 1rem; color: white;">Ta muốn trở thành
								chúa tể bóng tối</h5>
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
						<img
							src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-zUV0zmOUfD.jpg"
							class="card-img-top" alt="...">
						<div
							class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
							<h5 class="card-title my-0"
								style="font-size: 1rem; color: white;">Boku no Kokoro no
								Yabai Yatsu Season 2</h5>
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
						<img
							src="https://cdn.animevietsub.io/data/poster/2024/01/07/animevsub-BvIgqp9yZV.jpg"
							class="card-img-top" alt="...">
						<div
							class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
							<h5 class="card-title my-0"
								style="font-size: 1rem; color: white;">Mashle 2nd Season</h5>
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
						<img
							src="https://cdn.animevietsub.io/data/poster/2024/01/06/animevsub-hFzXC2v51y.png"
							class="card-img-top" alt="...">
						<div
							class="card-img-overlay d-flex flex-column justify-content-end align-items-center bg-hot">
							<h5 class="card-title my-0"
								style="font-size: 1rem; color: white;">Solo Leveling - Tôi
								thăng cấp một mình</h5>
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
		<div class="col-3">
			<div class="card bg-dark"
				style="border-radius: 10px; filter: drop-shadow(1px 1px 20px gray); margin-top: 100px;">
				<h2 class="h5 text-light mt-2 ms-3">Hôm nay xem gì?</h2>
				<hr class="border border-danger border-2 opacity-50 my-1">
				<div>
					<p class="text-light mx-3">Nếu bạn buồn phiền không biết xem gì
						hôm nay. Hãy để chúng tôi chọn cho bạn</p>
					<a class="mx-3 btn btn-danger mb-3" href="${url}randomanime">Xem
						phim ngẫu nhiên</a>
				</div>
			</div>
		</div>
	</div>
	<div class="d-flex  mt-5">
		<h1 class="h5 text-white btn btn-danger mx-2 ">Đề cử</h1>
		<ul class="list-unstyled d-flex mt-2">
			<li><a href="" class="mx-2 text-decoration-none loaiphim">Xem
					nhiều hôm nay</a></li>
			<li><a href="" class="mx-2 text-decoration-none loaiphim">Xem
					nhiều trong mùa</a></li>
			<li><a href="" class="mx-2 text-decoration-none loaiphim">Yêu
					thích</a></li>
			<li><a href="" class="mx-2 text-decoration-none loaiphim">Tháng</a>
			</li>
		</ul>
	</div>
	<div class="row justify-content-center d-flex m-auto">
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Oroka
						na Tenshi wa Akuma to Odoru</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Oroka
						na Tenshi wa Akuma to Odoru</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Oroka
						na Tenshi wa Akuma to Odoru</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-SCwnvRoP0m.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Nguyệt
						đao dị giới</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2022/10/05/animevsub-PeZHKapawP.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Ta
						muốn trở thành chúa tể bóng tối</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-zUV0zmOUfD.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Boku
						no Kokoro no Yabai Yatsu Season 2</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2024/01/07/animevsub-BvIgqp9yZV.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Mashle
						2nd Season</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2024/01/06/animevsub-hFzXC2v51y.png"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Solo
						Leveling - Tôi thăng cấp một mình</h5>
				</div>
			</div>
		</div>
	</div>
	<div class="row justify-content-center d-flex m-auto mt-2">
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Oroka
						na Tenshi wa Akuma to Odoru</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Oroka
						na Tenshi wa Akuma to Odoru</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-MZmNyOE4gT.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Oroka
						na Tenshi wa Akuma to Odoru</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-SCwnvRoP0m.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Nguyệt
						đao dị giới</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2022/10/05/animevsub-PeZHKapawP.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Ta
						muốn trở thành chúa tể bóng tối</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-zUV0zmOUfD.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Boku
						no Kokoro no Yabai Yatsu Season 2</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2024/01/07/animevsub-BvIgqp9yZV.jpg"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Mashle
						2nd Season</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card img-hot" style="width: 8.5rem; position: relative;">
				<img
					src="https://cdn.animevietsub.io/data/poster/2024/01/06/animevsub-hFzXC2v51y.png"
					class="card-img-top" alt="...">
				<div
					class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
					<h5 class="card-title" style="font-size: 0.7rem; color: white;">Solo
						Leveling - Tôi thăng cấp một mình</h5>
				</div>
			</div>
		</div>
	</div>
</div>

