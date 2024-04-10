<%@page import="akina.asm.entity.Video"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<div class="container" style="margin-top: 250px;">
	<div class="row">
		<div class="col-7">
			<div>
				<h5 class="text-white">Nguyễn Tú Akina</h5>
				<h1 class="text-white me-5" style="font-size: 4rem;">XEM PHIM
					MỚI NHẤT HAY NHẤT</h1>
				<p class="text-white me-5">Website của chúng tôi cung cấp dịch
					vụ xem phim miễn phí - trả phí chất lượng cao, có cả giải trí và
					các chức hỗ trợ tốt nhất cho người dùng. Bạn có thể xem ngay!</p>
			</div>
			<div>
				<a href="#xemphimngay"><button
						class="btn btn-outline-primary fw-bold mx-2 px-4">Xem
						phim ngay</button></a> <a href="#khampha">
					<button class="btn-danger btn mx-2 px-4 fw-bold">Khám phá</button>
				</a>
			</div>
		</div>
		<div class="col-5 justify-content-center d-flex m-auto">
			<div id="bannerhome" class="carousel carousel-dark slide img"
				data-bs-ride="carousel">
				<div class="carousel-inner" style="border-radius: 30px;">
					<div class="carousel-item active" data-bs-interval="2000">
						<img src="/ASSIGNMENT-NGUYENTUPS31013/images/anh1.jpg"
							class="d-block w-100  " alt="...">
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="/ASSIGNMENT-NGUYENTUPS31013/images/anh3.jpg"
							class="d-block w-100  " alt="...">
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="/ASSIGNMENT-NGUYENTUPS31013/images/anh2.jpg"
							class="d-block w-100  " alt="...">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Phim -->
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
				<button onclick="loadBefore()"
					class="btn btn-dark border-light me-3 px-3">
					<i class="bi bi-caret-left-fill"></i>
				</button>
				<button onclick="loadNext()"
					class="btn btn-dark border-light me-3 px-3">
					<i class="bi bi-caret-right-fill"></i>
				</button>
			</div>
		</div>
	</div>
	<form class="row justify-content-center d-flex m-auto" method="post"
		id="content">
		<c:forEach var="v" items="${vList}">
			<div class="col mt-2 listvdLoad">
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
							<button formaction="${url}like/${v.id}"
								class="btn btn-transparent btn-sm me-2 text-danger fw-bold">
								<i class="bi bi-hand-thumbs-up-fill"></i>
							</button>
							<button formaction="${url}share/${v.id}"
								class="btn btn-transparent btn-sm text-primary fw-bold">
								<i class="bi bi-share-fill"></i>
							</button>
						</div>
						<div class="btnXemNgay">
							<a href="${url}watchvideo/${v.id}"> <btn
									class="btn btn-warning">Xem Ngay</btn>
							</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</form>
</div>
<!-- Banner -->
<!-- <div style="background-color: black;"> -->
<div class="container mt-5" id="xemphimngay">
	<div class="row">
		<div class="col-9">
			<div id="pngAnime" class="carousel carousel-dark slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#pngAnime"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#pngAnime"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#pngAnime"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
					<button type="button" data-bs-target="#pngAnime"
						data-bs-slide-to="3" aria-label="Slide 4"></button>
					<button type="button" data-bs-target="#pngAnime"
						data-bs-slide-to="4" aria-label="Slide 5"></button>
				</div>
				<div class="carousel-inner"
					style="border-radius: 30px; filter: drop-shadow(1px 1px 20px gray);">
					<div class="carousel-item active" data-bs-interval="2000">
						<!-- <img src="banner-3.jpg" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5 class="text-danger">First slide label</h5>
                                        <p>Some representative placeholder content for the first slide.</p>
                                    </div> -->
						<div class="card text-bg-dark">
							<img src="/ASSIGNMENT-NGUYENTUPS31013/images/banner-3.jpg"
								class="card-img" alt="...">
							<div class="card-img-overlay">
								<h5 class="card-title">Card title</h5>
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
								<p class="card-text">
									<small>Last updated 3 mins ago</small>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="/ASSIGNMENT-NGUYENTUPS31013/images/banner-31.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>Second slide label</h5>
							<p>Some representative placeholder content for the second
								slide.</p>
						</div>
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="/ASSIGNMENT-NGUYENTUPS31013/images/banner-3ng.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>Third slide label</h5>
							<p>Some representative placeholder content for the third
								slide.</p>
						</div>
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="/ASSIGNMENT-NGUYENTUPS31013/images/banner-4-1.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>Third slide label</h5>
							<p>Some representative placeholder content for the third
								slide.</p>
						</div>
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="/ASSIGNMENT-NGUYENTUPS31013/images/banner-4-2.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>Third slide label</h5>
							<p>Some representative placeholder content for the third
								slide.</p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#pngAnime" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#pngAnime" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
			<div class="mt-5">
				<div class="d-flex">
					<h1 class="h5 text-white btn btn-danger mx-2 ">Mới cập nhật</h1>
					<ul class="list-unstyled d-flex mt-2">
						<li><a href="" class="mx-2 text-decoration-none loaiphim">Tất
								cả</a></li>
						<li><a href="" class="mx-2 text-decoration-none loaiphim">Mùa
								đông - 2024</a></li>
						<li><a href="" class="mx-2 text-decoration-none loaiphim">Anime
								bộ</a></li>
						<li><a href="" class="mx-2 text-decoration-none loaiphim">Anime
								lẻ</a></li>
						<li><a href="" class="mx-2 text-decoration-none loaiphim">Movie</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="row justify-content-center d-flex m-auto">
				<div class="col">
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
						<img
							src="https://cdn.animevietsub.io/data/poster/2023/12/07/animevsub-SCwnvRoP0m.jpg"
							class="card-img-top" alt="...">
						<div
							class="card-img-overlay d-flex justify-content-center align-items-end bg-hot">
							<h5 class="card-title" style="font-size: 0.7rem; color: white;">Nguyệt
								đao dị dới</h5>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
					<div class="card img-hot" style="width: 8rem; position: relative;">
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
		<!-- left -->
		<div class="col-3">
			<div class="card bg-dark"
				style="border-radius: 30px; filter: drop-shadow(1px 1px 20px gray);">
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
				style="border-radius: 30px; filter: drop-shadow(1px 1px 20px gray);">
				<h2 class="h5 text-light mt-2 mx-3">ANIME MỚI CẬP NHẬT</h2>
				<hr class="border border-success border-2 opacity-50 my-1">
				<ul class="list-unstyled mx-3">
					<li class="list-anime"><a class="text-decoration-none" href="">Kingdom
							5th Season</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Bakuage
							Sentai Boonboomger</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Luyện
							Khí Mười Vạn Năm</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Vạn
							Giới Độc Tôn</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Đan
							Đạo Chí Tôn</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Võ
							Thần Chúa Tể</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Độc
							Bộ Vạn Cổ</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Thánh
							Tổ</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Thần
							Long Tinh Chủ</a></li>
					<li class="list-anime"><a class="text-decoration-none" href="">Linh
							Kiếm Tôn</a></li>
				</ul>
			</div>
			<!-- Nhận xét -->
			<div class="bg-dark card mt-4"
				style="border-radius: 30px; height: 400px; filter: drop-shadow(1px 1px 20px gray);">
				<h2 class="h5 text-light mt-2 mx-3">Nhận xét</h2>
				<div class="form-floating mx-3">
					<textarea class="form-control" placeholder="Leave a comment here"
						id="floatingTextarea2" style="height: 70px"></textarea>
					<label for="floatingTextarea2">Comments</label>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Chưa có gì cả -->
<div class="container mt-5 justify-content-center w-75">
	<div class="row">
		<div class="col text-center">
			<h5 class="text-light">Tin tức</h5>
		</div>
		<div class="col text-center">
			<h5 class="text-light">Lịch chiếu Anime</h5>
		</div>
	</div>
	<div class="row me-2">
		<div class="col bg-dark card">
			<div class="d-flex  align-items-center mx-3 mt-2">
				<h2 class="text-light">5</h2>
				<h6 class="text-light ms-3">Top 12 Anime hot nhất bạn không nên
					bỏ qua.</h6>
			</div>
			<div class="d-flex  align-items-center mx-3 mt-2">
				<h2 class="text-light">5</h2>
				<h6 class="text-light ms-3">Top 10 bộ phim hay nhất mà bạn nên
					xem 1 lần trong đời.</h6>
			</div>
			<div class="d-flex  align-items-center mx-3 mt-2">
				<h2 class="text-light">5</h2>
				<h6 class="text-light ms-3">Top phim và chương trình ăn khách
					nhất trên Netflix từ trước đến nay.</h6>
			</div>
			<div class="d-flex  align-items-center mx-3 mt-2">
				<h2 class="text-light">5</h2>
				<h6 class="text-light ms-3">Top những bộ phim Anime tuổi thơ.</h6>
			</div>
		</div>
		<div class="col bg-dark card ms-2">
			<h6 class="text-light mt-2 text-center">Thứ Sáu, Ngày 22 tháng
				03</h6>
			<div class="row">
				<div class="col">
					<div class="card img-hot" style="width: 7rem; position: relative;">
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
					<div class="card img-hot" style="width: 7rem; position: relative;">
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
					<div class="card img-hot" style="width: 7rem; position: relative;">
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
					<div class="card img-hot" style="width: 7rem; position: relative;">
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
			</div>
		</div>
	</div>
</div>
<div class="container mt-5">
	<div class="d-flex">
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