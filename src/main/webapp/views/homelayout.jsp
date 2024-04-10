<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nguyễn Tú Akina</title>
</head>
<!-- BOOTSTRAPS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<!-- ICON -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- ANGULAR -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>
</head>
<c:set var="url"
	value="${pageContext.request.contextPath}/nguyentuakina/"
	scope="request"></c:set>
<c:set var="urlimg" value="${pageContext.request.contextPath}/images/"
	scope="request"></c:set>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/views/css/style.css">
<style>
.box-header {
	width: 100%;
	height: 1300px;
	/* background-color: black; */
	background-image: linear-gradient(180deg, rgba(153, 153, 153, 0.2),
		rgba(0, 0, 0)), linear-gradient(180deg, rgba(153, 153, 153, 0.7),
		rgba(0, 0, 0)), url(${pageContext.request.contextPath}/images/anh.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}
</style>
<body>
	<div class="box-header" id="head-home">
		<header>
			<jsp:include page="/views/layout/header.jsp" />
		</header>
		<main>
			<jsp:include page="${view}" />
		</main>
		<section class="mt-5">
			<!-- Footer -->
			<footer class="text-center text-white"
				style="background-color: #222427;">
				<jsp:include page="/views/layout/footer.jsp" />
			</footer>
		</section>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	var amount1 = 0;

	function loadNext() {
		if (document.getElementsByClassName("listvdLoad").length !== 6) {
			alert("Bạn đang ở cuối trang!");
			return; // Dừng hàm nếu số lượng phần tử không bằng 6
		}
		amount1 += 6; // Tăng giá trị của amount1 lên 6
		$.ajax({
			url : "${url}loadsixvideo",
			type : "get",
			data : {
				amount : amount1
			},
			success : function(data) {
				document.getElementById("content").innerHTML = data;
			},
			error : function(xhr) {
				// Xử lý lỗi nếu cần
			}
		});
	}

	function loadBefore() {
		if (amount1 == 0) {
			alert("Bạn đang ở đầu trang!");
			return; // Dừng hàm nếu amount1 bằng 0
		}
		amount1 -= 6; // Giảm giá trị của amount1 đi 6
		$.ajax({
			url : "${url}loadsixvideo",
			type : "get",
			data : {
				amount : amount1
			},
			success : function(data) {
				document.getElementById("content").innerHTML = data;
			},
			error : function(xhr) {
				// Xử lý lỗi nếu cần
			}
		});
	}
</script>

</html>


