<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<div class="container">
	<div class="row">
		<div class="col-9 bg-dark"
			style="margin-top: 100px; border-radius: 10px; filter: drop-shadow(1px 1px 20px gray);">
			<div class="m-2 mt-3">
				<iframe width="100%" height="500"
					src="https://www.youtube.com/embed/${video.id}"
					title="${video.title}" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</div>
			<div class="text-center">
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Tập
					tiếp</button>
				<a class="btn btn-transparent text-primary mx-1 fw-bold"
					href="#binhluan">Bình luận</a>
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Tắt
					đèn</button>
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Theo
					dõi</button>
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Phóng
					to</button>
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Báo
					lỗi</button>
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Chụp
					ảnh</button>
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Tải
					về</button>
				<button class="btn btn-transparent text-primary mx-1 fw-bold">Lịch
					sử xem</button>
			</div>
			<div class="text-center">
				<h3 class="text-light">Chọn Server</h3>
				<button class="btn btn-success mx-2">HD</button>
				<button class="btn btn-success mx-2">FHD</button>
				<button class="btn btn-success mx-2">4K</button>
			</div>
			<div class="m-3 ">
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
				<button class="btn btn-info m-2">01</button>
			</div>
			<div class="anime-full mt-2"
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
		</div>
		<div class="col-3" style="margin-top: 100px;">
			<div class="card bg-dark"
				style="border-radius: 10px; filter: drop-shadow(1px 1px 20px gray);">
				<h2 class="h5 text-light mt-2 ms-3">Hôm nay xem gì?</h2>
				<hr class="border border-danger border-2 opacity-50 my-1">
				<div>
					<p class="text-light mx-3">Nếu bạn buồn phiền không biết xem gì
						hôm nay. Hãy để chúng tôi chọn cho bạn</p>
					<a class="mx-3 btn btn-danger mb-3" href="${url}randomanime">Xem
						phim ngẫu nhiên</a>
				</div>
			</div>
			<div class="bg-dark card mt-4"
				style="border-radius: 10px; filter: drop-shadow(1px 1px 20px gray);">
				<h2 class="h5 text-light mt-2 mx-3">ANIME MỚI CẬP NHẬT</h2>
				<hr class="border border-success border-2 opacity-50 my-1">
				<ul class="list-unstyled mx-3">
					<li class="list-anime"><a
						class="text-decoration-none text-danger " href="">Kingdom 5th
							Season</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Bakuage
							Sentai Boonboomger</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Luyện Khí
							Mười Vạn Năm</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Vạn Giới Độc
							Tôn</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Đan Đạo Chí
							Tôn</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Võ Thần Chúa
							Tể</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Độc Bộ Vạn Cổ</a>
					</li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Thánh Tổ</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Thần Long
							Tinh Chủ</a></li>
					<li class="list-anime"><a
						class="text-decoration-none text-danger" href="">Linh Kiếm Tôn</a>
					</li>
				</ul>
			</div>
			<div class="bg-dark card mt-4"
				style="border-radius: 10px; filter: drop-shadow(1px 1px 20px gray);">
				<c:forEach var="f" items="${fList}">
					<c:set var="fv" value="${f.video}"></c:set>
					<div class="d-flex mt-3 top-anime mx-2">
						<i class="bi bi-collection-play me-2 text-danger fw-bold"></i> <img
							src="${fv.poster}" alt=""
							style="width: 60px; filter: drop-shadow(1px 1px 5px rgb(220, 157, 157));">
						<span class=" mx-2"> <a
							class="text-decoration-none text-light" style="font-size: 13px;"
							href="">${fv.title}</a>
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
	<div class="container mt-5 bg-dark" id="binhluan"
		style="height: 500px;">
		<h3 class="text-primary text-center">Trang nhận xét</h3>
		<div class="bg-light" style="height: 400px;">sadasd</div>
	</div>
</div>