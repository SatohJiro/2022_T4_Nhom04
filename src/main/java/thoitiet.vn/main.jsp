<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dự báo thời tiết các tỉnh - thành phố, biển, đất liền ở
	Việt Nam</title>

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&display=swap"
	rel="stylesheet">
<!--     <link href="/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="/lib/bootstrap-icons/bootstrap-icons.css" />
 -->
<link rel="stylesheet" href="lib/bootstrap-icons/bootstrap-icons.css">

<!-- <link href="css/card.css" rel="stylesheet" />
 -->
<link rel="stylesheet" href="css/card.css">

<!-- <link rel="stylesheet"
	href="/css/site.css?v=hwgjZ-Xb4qI98fSjzItoHFH9oxBvX0a9oMx9yRAtiFs" /> -->

<link rel="stylesheet" href="css/site.css">


<!-- begin bootrap cdn
 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<!-- end bootrap cdn
 -->




<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"></script>
<script async
	src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5437093769370767"
	crossorigin="anonymous"></script>


</head>

<body>

	<nav
		class="navbar sticky-top navbar-expand-md pb-1 bg-white navbar-light">
		<div class="container"
			style="position: relative; display: flex; justify-content: center; align-items: center;">

			<div class="search d-md-none">
				<div class="form-group mb-0 search-group">
					<select class="form-control basicModalAutoSelect search-input"
						name="simple_select" data-url="/api/Catalog/search-location"
						data-noresults-text="Không tìm thấy kết quả."
						placeholder="Nhập tên địa điểm..." autocomplete="off" tabindex="1"
						autofocus></select>
				</div>
			</div>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>

	</nav>


	<main class="weather-day">

		<section class="section-container section-wheather">
			<div class="container">
				<div class="row">
					<!--Danh sách thành phố, điểm đến, núi-->
					<div class="col-12 col-md-8 order-1 order-sm-0">
						<h1 class="wheather-group-title">Dự báo thời tiết các
							Tỉnh/Thành phố</h1>
						<div class="row">
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/ha-giang">
												<h3 class="card-city-title">Hà Giang</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Hà Giang" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 75 %
													</div>
												</div>
												<p class="mb-0">Nhiều mây</p>
												<div class="card-city-footer">
													<p title="Hiện tại">24°</p>
													<p>/</p>
													<p title="Cảm giác như">24°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/cao-bang">
												<h3 class="card-city-title">Cao Bằng</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Cao Bằng" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 85 %
													</div>
												</div>
												<p class="mb-0">Nhiều mây</p>
												<div class="card-city-footer">
													<p title="Hiện tại">23°</p>
													<p>/</p>
													<p title="Cảm giác như">24°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/lao-cai">
												<h3 class="card-city-title">Lào Cai</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/02d@2x.png"
														alt="Lào Cai" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 59 %
													</div>
												</div>
												<p class="mb-0">Mây thưa</p>
												<div class="card-city-footer">
													<p title="Hiện tại">28°</p>
													<p>/</p>
													<p title="Cảm giác như">29°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/dien-bien">
												<h3 class="card-city-title">Điện Biên</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Điện Biên" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 58 %
													</div>
												</div>
												<p class="mb-0">Mây cụm</p>
												<div class="card-city-footer">
													<p title="Hiện tại">27°</p>
													<p>/</p>
													<p title="Cảm giác như">28°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/ha-noi">
												<h3 class="card-city-title">Hà Nội</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Hà Nội" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 83 %
													</div>
												</div>
												<p class="mb-0">Mây cụm</p>
												<div class="card-city-footer">
													<p title="Hiện tại">26°</p>
													<p>/</p>
													<p title="Cảm giác như">26°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/hai-phong">
												<h3 class="card-city-title">Hải Phòng</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/02d@2x.png"
														alt="Hải Phòng" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 65 %
													</div>
												</div>
												<p class="mb-0">Mây thưa</p>
												<div class="card-city-footer">
													<p title="Hiện tại">29°</p>
													<p>/</p>
													<p title="Cảm giác như">32°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/thanh-hoa">
												<h3 class="card-city-title">Thanh Hóa</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Thanh Hóa" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 87 %
													</div>
												</div>
												<p class="mb-0">Nhiều mây</p>
												<div class="card-city-footer">
													<p title="Hiện tại">24°</p>
													<p>/</p>
													<p title="Cảm giác như">25°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/quang-tri">
												<h3 class="card-city-title">Quảng Trị</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Quảng Trị" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 88 %
													</div>
												</div>
												<p class="mb-0">Nhiều mây</p>
												<div class="card-city-footer">
													<p title="Hiện tại">26°</p>
													<p>/</p>
													<p title="Cảm giác như">26°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/da-nang">
												<h3 class="card-city-title">Đà Nẵng</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Đà Nẵng" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 78 %
													</div>
												</div>
												<p class="mb-0">Mây cụm</p>
												<div class="card-city-footer">
													<p title="Hiện tại">28°</p>
													<p>/</p>
													<p title="Cảm giác như">32°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/quang-ngai">
												<h3 class="card-city-title">Quảng Ngãi</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Quảng Ngãi" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 82 %
													</div>
												</div>
												<p class="mb-0">Mây cụm</p>
												<div class="card-city-footer">
													<p title="Hiện tại">28°</p>
													<p>/</p>
													<p title="Cảm giác như">32°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/binh-thuan">
												<h3 class="card-city-title">Bình Thuận</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
														alt="Bình Thuận" title="Clouds" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 82 %
													</div>
												</div>
												<p class="mb-0">Nhiều mây</p>
												<div class="card-city-footer">
													<p title="Hiện tại">26°</p>
													<p>/</p>
													<p title="Cảm giác như">26°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-6 col-md-3">
								<article class="forecast">

									<div class="location-wheather">
										<div class="card mb-3">
											<a href="/ca-mau">
												<h3 class="card-city-title">Cà Mau</h3>
												<div class="card-city-body">
													<img
														src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
														alt="Cà Mau" title="Rain" />
													<div class="precipitation" title="Lượng mưa">
														<i class="bi bi-droplet"></i> 72 %
													</div>
												</div>
												<p class="mb-0">Mưa vừa</p>
												<div class="card-city-footer">
													<p title="Hiện tại">29°</p>
													<p>/</p>
													<p title="Cảm giác như">34°</p>
												</div>

											</a>
										</div>
									</div>

								</article>
							</div>
						</div>
					</div>
</body>

</html>