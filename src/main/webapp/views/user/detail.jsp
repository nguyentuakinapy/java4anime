<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<div class="container " style="margin-top: 150px;">
	<div class="row">
		<div class="col-8">
			<div class="anime-full"
				style="background-image: url(${video.banner})">
				<div class="text-anime-full">
					<div class="d-flex justify-content-start align-items-center">
						<img class="ms-5" src="${video.poster}"
							style="width: 150px; margin-top: 10%;" alt="">
						<div>
							<h3 class="text-info mx-3" style="margin-top: 12%;">${video.title}</h3>
							<p class="text-light mx-3">${video.description}</p>
							<hr class="text-light mx-3 my-1">
							<button class="btn btn-transparent btn text-light fw-bold ms-3">
								<i class="bi bi-hand-thumbs-up-fill"></i>
							</button>
							<button class="btn btn-transparent btn text-light fw-bold">
								<i class="bi bi-share-fill"></i>
							</button>
							<i class="bi bi-alarm-fill text-light ms-4 me-3">13/12/2023</i> <i
								class="bi bi-calendar text-light">2024</i>
							<hr class="text-light mx-3 my-1">
							<i class="bi bi-eye-fill text-light ms-3">${video.views} Lượt
								Xem</i>
						</div>
					</div>
					<div class="row">
						<div class="col text-start">
							<button
								class="btn btn-sm btn-outline-light fw-bold mt-3 ms-5 mx-2">Phần
								1</button>
							<button class="btn btn-sm btn-outline-light fw-bold mt-3 mx-2">Phần
								2</button>
							<button class="btn btn-sm btn-outline-light fw-bold mt-3 mx-2">Phần
								3</button>
						</div>
						<div class="col text-end">
							<a href="${url}watchvideo/${video.id}"
								class="btn btn-sm btn-outline-danger fw-bold mt-3 me-5"><i
								class="bi bi-collection-play-fill me-2"></i>Xem ngay</a>
						</div>
					</div>
				</div>
			</div>
			<div class="">
				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<button class="nav-link active" id="nav-home-tab"
							data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
							role="tab" aria-controls="nav-home" aria-selected="true">Thông
							tin thêm</button>
						<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
							data-bs-target="#nav-profile" type="button" role="tab"
							aria-controls="nav-profile" aria-selected="false">Nhân
							vật</button>
						<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
							data-bs-target="#nav-contact" type="button" role="tab"
							aria-controls="nav-contact" aria-selected="false">Trailer</button>
						<button class="nav-link" id="nav-disabled-tab"
							data-bs-toggle="tab" data-bs-target="#nav-disabled" type="button"
							role="tab" aria-controls="nav-disabled" aria-selected="false">Hình
							ảnh</button>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active text-light" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
						Tập mới:121110 <br> Lịch chiếu: Thứ Tư vào lúc 23 giờ 00 phút
						hàng tuần <br> Trạng thái: Phim đang chiếu/Cập Nhật Tập 12
						VietSub <br> Thể loại: Anime bộ, Slice of Life, School,
						Psychological, Drama, <br> Đạo diễn: Kishi Seiji, Hashimoto
						Hiroyuki, Nishouji Yoshihito <br> Quốc gia: Nhật Bản, <br>
						Số người theo dõi: 3,258 <br> Thời lượng: 12/13 <br>
						Chất lượng: HD <br> Rating: PG-13 - Teens 13 tuổi trở lên <br>
						Ngôn ngữ: VietSub <br> Studio: Lerche <br> Season: Mùa
						Đông - 2024
					</div>
					<div class="tab-pane fade text-light" id="nav-profile"
						role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
						Nhân vật Ayanokouji Kiyotaka <br> Ayanokouji Kiyotaka <br>
						Nhân vật Horikita Suzune <br> Horikita Suzune <br> Nhân
						vật Karuizawa Kei <br> Karuizawa Kei <br> Nhân vật
						Sakayanagi Arisu <br> Sakayanagi Arisu <br> Nhân vật
						Ichinose Honami <br> Ichinose Honami <br> Nhân vật
						Ryuuen Kakeru <br> Ryuuen Kakeru <br> Nhân vật Kushida
						Kikyou <br> Kushida Kikyou <br> Nhân vật Kouenji
						Rokusuke <br> Kouenji Rokusuke <br> Nhân vật Shiina
						Hiyori <br> Shiina Hiyori <br> Nhân vật Horikita Manabu
						<br> Horikita Manabu <br>
					</div>
					<div class="tab-pane fade" id="nav-contact" role="tabpanel"
						aria-labelledby="nav-contact-tab" tabindex="0">
						<iframe width="100%" height="400px"
							src="https://www.youtube.com/embed/0yOULRwyp2o?si=ibyHlX_TfETRSGnE"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
					</div>
					<div class="tab-pane fade" id="nav-disabled" role="tabpanel"
						aria-labelledby="nav-disabled-tab" tabindex="0">
						<img src="${video.banner}" class="w-100" alt="">
					</div>
				</div>
			</div>
		</div>
		<div class="col-4">
			<c:forEach var="f" items="${fList}">
				<c:set var="fv" value="${f.video}"></c:set>
				<div class="d-flex mt-3 top-anime mx-2">
					<i class="bi bi-collection-play me-2 text-danger fw-bold"></i> <img
						src="${fv.poster}" alt=""
						style="width: 60px; filter: drop-shadow(1px 1px 5px rgb(220, 157, 157));">
					<span class=" mx-2"> <a
						class="text-decoration-none text-light" style="font-size: 13px;"
						href="${url}detail/${fv.id}">${fv.title}</a>
						<p class="text-info my-0" style="font-size: 9px;">${fv.description}</p>
						<button
							class="btn btn-transparent btn-sm me-2 text-primary fw-bold">
							<i class="bi bi-hand-thumbs-up-fill"></i>
						</button>
						<button class="btn btn-transparent btn-sm text-primary fw-bold">
							<i class="bi bi-share-fill"></i>
						</button>
					</span>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<div class="container" style="margin-top: 30px;" id="khampha">
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
<div class="container" style="margin-top: 30px;" id="khampha">
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
<div class="container bg-dark mt-5" style="height: 500px;">
	<h3 class="text-primary text-center">Trang nhận xét</h3>
</div>
