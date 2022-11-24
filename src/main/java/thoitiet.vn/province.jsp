<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dự báo thời tiết Ninh Thuận hôm nay, ngày mai và 10 ngày
	tới</title>

<meta name="theme-color" content="#ffffff">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&display=swap"
	rel="stylesheet">
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

<link rel="stylesheet" href="lib/bootstrap-icons/bootstrap-icons.css" />

<link href="css/card.css" rel="stylesheet" />

<link rel="stylesheet" href="css/site.css" />
<script async
	src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5437093769370767"
	crossorigin="anonymous"></script>



</head>
<body>


	<nav
		class="navbar sticky-top navbar-expand-md pb-1 bg-white navbar-light">
		<div class="container" style="position: relative">

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
					<div class="col-12">
						<nav aria-label="breadcrumb" class="mt-2">
							<ol class="breadcrumb mb-0">
								<li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
								<li class="breadcrumb-item active" aria-current="page">Thời
									tiết Ninh Thuận</li>
							</ol>
						</nav>
					</div>
				</div>
				<div class="row">
					<!--Danh sách thành phố, điểm đến, núi-->
					<div class="col-12 col-md-8">
						<div class="current-location">
							<div
								class="d-flex flex-column flex-sm-row justify-content-between">
								<div class="location-name">
									<span class="location-name-icon"> <i class="bi bi-geo"></i>
									</span>
									<h1 class="location-name-main">
										<a href="/ninh-thuan"> Dự báo thời tiết Ninh Thuận </a>
									</h1>
									<a href="#" rel="nofollow" title="Chọn làm địa chỉ mặc định"
										class="btn-current-location" data-lat="11.559"
										data-lng="108.988"> <i class="bi bi-house-door"></i>
									</a>
								</div>
								<div class="share-button">
									<div class="fb-like" data-href="https://thoitiet.vn/ninh-thuan"
										data-width="" data-layout="button" data-action="like"
										data-size="small" data-share="true"></div>
								</div>

							</div>
							<div class="location-auto-refresh">
								<span>Đã cập nhật 7 phút trước</span>
							</div>

							<div class="d-flex flex-wrap">
								<div class="overview-current">
									<img src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
										alt="Mây cụm" /> <span class="current-temperature">29°</span>
									<div class="unit-group">
										<p>C</p>
										<p href="#" title="Thay đổi đơn vị" class="btn-unit-switcher">
											<span>F</span>
										</p>
									</div>
								</div>
								<div class="overview-caption ml-3">
									<p class="overview-caption-item overview-caption-item-detail">Mây
										cụm</p>
									<p
										class="overview-caption-item overview-caption-summary-detail">Cảm
										giác như 33°.</p>
								</div>
							</div>
							<div
								class="d-flex flex-wrap justify-content-between weather-detail mt-2">
								<div class="d-flex">
									<div class="avatar">
										<div class="avatar-img rounded-circle">
											<svg
												class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
												set="current-conditions" name="temp" theme="dark"
												data-testid="Icon" aria-hidden="true" role="img"
												viewBox="0 0 24 24">
                    <title>Temperature</title>
                    <path
													d="M10.333 15.48v.321c.971.357 1.667 1.322 1.667 2.456 0 1.438-1.12 2.604-2.5 2.604S7 19.695 7 18.257c0-1.134.696-2.099 1.667-2.456v-.322a2.084 2.084 0 0 1-1.25-1.91V5.583a2.083 2.083 0 1 1 4.166 0v7.986c0 .855-.514 1.589-1.25 1.91zM15.8 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
                </svg>
										</div>
									</div>
									<div class="flex-1 pt-1 ml-2">
										<span class="fw-bold mb-1">Thấp/Cao</span>
										<div class="d-flex ml-auto align-items-center">
											<span class="text-white op-8 fw-bold">23°/29°</span>
										</div>
									</div>
								</div>
								<div class="d-flex">
									<div class="avatar">
										<div class="avatar-img rounded-circle">
											<span class="weather-icon"> <i class="bi bi-droplet"></i>
											</span>
										</div>
									</div>
									<div class="flex-1 pt-1 ml-2">
										<span class="fw-bold mb-1">Độ ẩm</span>
										<div class="d-flex ml-auto align-items-center">
											<span class="text-white op-8 fw-bold">74%</span>
										</div>
									</div>
								</div>
								<div class="d-flex">
									<div class="avatar">
										<div class="avatar-img rounded-circle">
											<svg
												class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
												set="current-conditions" name="visibility" theme="dark"
												data-testid="Icon" aria-hidden="true" role="img"
												width="1024" height="1024" viewBox="0 0 1024 1024">
												<title>Visibility</title><path
													d="M491.856 879.808c-60.48-5.056-110.848-25.184-171.328-55.424-120.96-55.424-216.704-146.112-292.256-256.96-25.248-40.352-30.24-80.64 0-126.016 80.608-115.872 186.464-211.68 317.472-272.096 110.816-50.4 226.752-50.4 337.664 0 136 60.48 241.824 156.224 317.44 282.208 15.104 25.216 25.12 65.504 10.048 85.728-105.792 191.424-256.992 367.84-519.04 342.56zm292.256-377.92c0-151.168-120.96-272.064-272.096-272.064-146.144 0-272.128 126.016-272.128 272.064 0 151.232 120.96 277.216 272.128 277.216 151.104-.032 272.096-125.984 272.096-277.216z"></path>
												<path
													d="M789.808 500.416c0 156.896-125.472 287.52-282.336 282.336-156.864 0-282.336-130.656-282.336-287.488 0-146.4 130.656-277.12 282.336-277.12 156.896-.032 287.584 125.376 282.336 282.272zM512.752 348.832c-83.68 0-151.584 67.968-151.584 151.584 0 88.864 67.968 156.896 151.584 156.896 83.648 0 156.832-73.216 156.832-156.896-5.184-83.648-73.152-151.584-156.832-151.584z"></path></svg>
										</div>
									</div>
									<div class="flex-1 pt-1 ml-2">
										<span class="fw-bold mb-1">Tầm nhìn</span>
										<div class="d-flex ml-auto align-items-center">
											<span class="text-white op-8 fw-bold">10 km</span>
										</div>
									</div>
								</div>
								<div class="d-flex">
									<div class="avatar">
										<div class="avatar-img rounded-circle">
											<svg
												class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
												set="current-conditions" name="wind" theme="dark"
												data-testid="Icon" aria-hidden="true" role="img"
												viewBox="0 0 24 24">
												<title>Wind</title><path
													d="M6 8.67h5.354c1.457 0 2.234-1.158 2.234-2.222S12.687 4.4 11.354 4.4c-.564 0-1.023.208-1.366.488M3 11.67h15.54c1.457 0 2.235-1.158 2.235-2.222S19.873 7.4 18.54 7.4c-.747 0-1.311.365-1.663.78M6 15.4h9.389c1.457 0 2.234 1.159 2.234 2.223 0 1.064-.901 2.048-2.234 2.048a2.153 2.153 0 0 1-1.63-.742"
													stroke-width="2" stroke="currentColor"
													stroke-linecap="round" fill="none"></path></svg>
										</div>
									</div>
									<div class="flex-1 pt-1 ml-2">
										<span class="fw-bold mb-1">Gió</span>
										<div class="d-flex ml-auto align-items-center">
											<span class="text-white op-8 fw-bold">0.97 km/giờ</span>
										</div>
									</div>
								</div>
								<div class="d-flex">
									<div class="avatar">
										<div class="avatar-img rounded-circle">
											<svg
												class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
												set="current-conditions" name="dewpoint" theme="dark"
												data-testid="Icon" aria-hidden="true" role="img"
												viewBox="0 0 24 24">
												<title>Dew Point</title><path
													d="M17 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
												<path fill-rule="evenodd"
													d="M9.743 18.912a4.182 4.182 0 0 1-2.928-1.182 3.972 3.972 0 0 1-.614-4.962.743.743 0 0 1 .646-.349c.234 0 .476.095.66.275l4.467 4.355c.385.376.39.998-.076 1.275a4.216 4.216 0 0 1-2.155.588M9.855 5c.316 0 .61.14.828.395.171.2.36.416.562.647 1.857 2.126 4.965 5.684 4.965 8.73 0 3.416-2.85 6.195-6.353 6.195-3.505 0-6.357-2.78-6.357-6.195 0-3.082 2.921-6.406 4.854-8.605.242-.275.47-.535.673-.772C9.245 5.14 9.54 5 9.855 5"></path></svg>
										</div>
									</div>
									<div class="flex-1 pt-1 ml-2">
										<span class="fw-bold mb-1">Điểm ngưng</span>
										<div class="d-flex ml-auto align-items-center">
											<span class="text-white op-8 fw-bold">24 °C</span>
										</div>
									</div>
								</div>
								<div class="d-flex">
									<div class="avatar">
										<div class="avatar-img rounded-circle">
											<svg
												class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
												set="current-conditions" name="uv" theme="dark"
												data-testid="Icon" aria-hidden="true" role="img"
												viewBox="0 0 24 24">
												<title>UV Level</title><path
													d="M7.4 5.598a.784.784 0 0 1 .25-.92c.335-.256.824-.197 1.02.062.066.063.066.063.08.085l2.406 3.152-.626.238a3.983 3.983 0 0 0-1.097.633l-.522.424L7.4 5.598zm4.539 2.358c-.21 0-.418.017-.625.05l-.664.106.09-.666.438-3.266c.013-.072.013-.072.012-.057a.783.783 0 0 1 .666-.616.78.78 0 0 1 .872.639l.006.038.507 3.933-.662-.108a3.957 3.957 0 0 0-.64-.053zm-7.781 3.19l.026-.004 3.934-.507-.108.662a3.98 3.98 0 0 0-.003 1.266l.105.664-.665-.09-3.265-.439a.784.784 0 0 1-.676-.679c-.054-.42.238-.809.63-.869l.022-.004zm11.504-.617a3.98 3.98 0 0 0-.632-1.097l-.425-.522.623-.256 3.056-1.256a.787.787 0 0 1 .916.253c.256.337.199.817-.104 1.063l-.045.037-3.151 2.405-.238-.627zm-1.205-1.672a3.984 3.984 0 0 0-1.095-.637l-.626-.24.41-.532 2.008-2.602c.059-.07.059-.07.046-.052a.78.78 0 0 1 1.306.227c.076.185.079.39.02.54l-.021.06-1.528 3.662-.52-.426zM4.595 7.793c.162-.387.611-.58.971-.441.017.004.017.004.055.02L9.283 8.9l-.425.52a3.985 3.985 0 0 0-.636 1.094l-.24.627-3.144-2.425a.784.784 0 0 1-.243-.924zm14.443 7.367c.054.045.054.045.044.04a.784.784 0 0 1 .199.884c-.163.386-.61.58-.964.443-.024-.006-.024-.006-.062-.022l-3.662-1.529.426-.52a3.98 3.98 0 0 0 .636-1.094l.241-.626 3.142 2.424zm1.332-3.303c.053.422-.239.809-.63.87l-.035.006-3.945.508.108-.662a3.999 3.999 0 0 0 .003-1.266l-.105-.663.665.09 3.272.44c.068.012.068.012.052.01a.784.784 0 0 1 .615.667zm-3.894 6.421c.024.068.024.068.017.053a.786.786 0 0 1-.27.87c-.332.25-.816.194-1.047-.091-.022-.023-.022-.023-.05-.058l-2.406-3.154.626-.237a3.977 3.977 0 0 0 1.097-.632l.523-.425 1.51 3.674zm-8.26-4.932c.151.397.365.767.633 1.097l.424.522-.622.256-3.054 1.255a.787.787 0 0 1-.92-.25.781.781 0 0 1-.154-.58c.027-.199.127-.379.227-.452.045-.046.045-.046.075-.069l3.153-2.406.238.627zm3.723 2.572c.209 0 .417-.016.625-.049l.662-.103-.089.664-.438 3.26-.012.062a.785.785 0 0 1-.666.618c-.048.005-.048.005-.101.006-.386 0-.714-.28-.764-.612-.01-.043-.01-.043-.014-.072l-.507-3.934.662.108c.213.035.427.052.642.052zM7.366 18.27l.006-.015L8.9 14.592l.52.426a3.99 3.99 0 0 0 1.094.636l.626.241-.41.531-2.012 2.609-.04.046a.788.788 0 0 1-.886.2.787.787 0 0 1-.428-1.011z"></path>
												<path
													d="M11.911 14.322a2.411 2.411 0 1 0 0-4.822 2.411 2.411 0 0 0 0 4.822zm0 2a4.411 4.411 0 1 1 0-8.822 4.411 4.411 0 0 1 0 8.822z"></path></svg>
										</div>
									</div>
									<div class="flex-1 pt-1 ml-2">
										<span class="fw-bold mb-1">Chỉ số UV</span>
										<div class="d-flex ml-auto align-items-center">
											<span class="text-white op-8 fw-bold">0</span>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="current-location">
							<div class="d-flex justify-content-between pt-1 air-container">
								<h2 class="air-title">Chất lượng không khí: Kh&#xE1;</h2>

								<div class="air-rules">
									<p class="air-api air-api-1 "
										title="Ch&#x1EA5;t l&#x1B0;&#x1EE3;ng kh&#xF4;ng kh&#xED; &#x111;&#x1EA1;t ti&#xEA;u chu&#x1EA9;n, v&#xE0; &#xF4; nhi&#x1EC5;m kh&#xF4;ng kh&#xED; coi nh&#x1B0; kh&#xF4;ng ho&#x1EB7;c g&#xE2;y r&#x1EA5;t &#xED;t nguy hi&#x1EC3;m">
										Tốt</p>
									<p class="air-api air-api-2 air-active"
										title="Ch&#x1EA5;t l&#x1B0;&#x1EE3;ng kh&#xF4;ng kh&#xED; &#x1EDF; m&#x1EE9;c ch&#x1EA5;p nh&#x1EAD;n &#x111;&#x1B0;&#x1EE3;c. Tuy nhi&#xEA;n, m&#x1ED9;t s&#x1ED1; ch&#x1EA5;t g&#xE2;y &#xF4; nhi&#x1EC5;m c&#xF3; th&#x1EC3; &#x1EA3;nh h&#x1B0;&#x1EDF;ng t&#x1EDB;i s&#x1EE9;c kh&#x1ECF;e c&#x1EE7;a m&#x1ED9;t s&#x1ED1; &#xED;t nh&#x1EEF;ng ng&#x1B0;&#x1EDD;i nh&#x1EA1;y c&#x1EA3;m v&#x1EDB;i kh&#xF4;ng kh&#xED; b&#x1ECB; &#xF4; nhi&#x1EC5;m">
										Khá</p>
									<p class="air-api air-api-3 "
										title="Kh&#xF4;ng t&#x1ED1;t cho ng&#x1B0;&#x1EDD;i nh&#x1EA1;y c&#x1EA3;m. Nh&#xF3;m ng&#x1B0;&#x1EDD;i nh&#x1EA1;y c&#x1EA3;m c&#xF3; th&#x1EC3; ch&#x1ECB;u &#x1EA3;nh h&#x1B0;&#x1EDF;ng s&#x1EE9;c kh&#x1ECF;e. S&#x1ED1; &#x111;&#xF4;ng kh&#xF4;ng c&#xF3; nguy c&#x1A1; b&#x1ECB; t&#xE1;c &#x111;&#x1ED9;ng.">
										Trung bình</p>
									<p class="air-api air-api-4 "
										title="C&#xF3; h&#x1EA1;i cho s&#x1EE9;c kh&#x1ECF;e v&#x1EDB;i &#x111;a s&#x1ED1; ng&#x1B0;&#x1EDD;i. M&#x1ED7;i ng&#x1B0;&#x1EDD;i &#x111;&#x1EC1;u c&#xF3; th&#x1EC3; s&#x1EBD; ch&#x1ECB;u t&#xE1;c &#x111;&#x1ED9;ng &#x111;&#x1EBF;n s&#x1EE9;c kh&#x1ECF;e. Nh&#xF3;m ng&#x1B0;&#x1EDD;i nh&#x1EA1;y c&#x1EA3;m c&#xF3; th&#x1EC3; b&#x1ECB; &#x1EA3;nh h&#x1B0;&#x1EDF;ng nghi&#xEA;m tr&#x1ECD;ng h&#x1A1;n.">
										Kém</p>
									<p class="air-api air-api-5 "
										title="R&#x1EA5;t c&#xF3; h&#x1EA1;i cho s&#x1EE9;c kh&#x1ECF;e. C&#x1EA3;nh b&#xE1;o nguy h&#x1EA1;i s&#x1EE9;c kh&#x1ECF;e nghi&#xEA;m tr&#x1ECD;ng. &#x110;a s&#x1ED1; m&#x1ECD;i ng&#x1B0;&#x1EDD;i &#x111;&#x1EC1;u b&#x1ECB; &#x1EA3;nh h&#x1B0;&#x1EDF;ng.">
										Rất kém</p>
								</div>
							</div>
							<div
								class="d-flex flex-wrap justify-content-between weather-detail mt-2 air-components">
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">CO</span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 473.98 </span>
									</div>
								</div>
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">NH<sub>3</sub></span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 1.6 </span>
									</div>
								</div>
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">NO</span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 0.25 </span>
									</div>
								</div>
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">NO<sub>2</sub></span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 1.91 </span>
									</div>
								</div>
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">O<sub>3</sub></span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 26.82 </span>
									</div>
								</div>
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">PM<sub>10</sub></span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 13.48 </span>
									</div>
								</div>
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">PM<sub>25</sub></span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 10.84 </span>
									</div>
								</div>
								<div class="flex-1 pt-1 ml-2">
									<span class="fw-bold mb-1">SO<sub>2</sub></span>
									<div class="d-flex ml-auto align-items-center">
										<span class="text-white op-8 fw-bold"> 0.87 </span>
									</div>
								</div>
							</div>
						</div>

						<div class="location-data">
							<div class="location-data-summary">
								<div class="current-location">
									<div
										class="weather-feature d-flex flex-wrap justify-content-between align-items-center mt-2 mb-2">
										<h2>Thời tiết Ninh Thuận theo giờ (24h)</h2>
										<a href="/ninh-thuan/theo-gio" class="weather-feature-day-btn">
											Thời tiết 24h </a>
									</div>
									<div id="carousel-hourly" class="carousel slide"
										data-ride="carousel" data-interval="9000" data-touch="true">
										<div class="carousel-inner row w-100 mx-auto" role="listbox">
											<div class="carousel-item col-md-3  active">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>09:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Mây cụm" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 75 %
															</div>
														</div>
														<p class="mb-0">Mây cụm</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">28 °C</p>
															<p>/</p>
															<p title="Cảm giác như">32 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>Hiện tại</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Mây cụm" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 74 %
															</div>
														</div>
														<p class="mb-0">Mây cụm</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">29 °C</p>
															<p>/</p>
															<p title="Cảm giác như">33 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>11:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Mây cụm" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 75 %
															</div>
														</div>
														<p class="mb-0">Mây cụm</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">29 °C</p>
															<p>/</p>
															<p title="Cảm giác như">33 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>12:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Mây cụm" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 75 %
															</div>
														</div>
														<p class="mb-0">Mây cụm</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">29 °C</p>
															<p>/</p>
															<p title="Cảm giác như">33 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>13:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 76 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">28 °C</p>
															<p>/</p>
															<p title="Cảm giác như">33 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>14:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 78 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">28 °C</p>
															<p>/</p>
															<p title="Cảm giác như">32 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>15:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 81 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">28 °C</p>
															<p>/</p>
															<p title="Cảm giác như">31 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>16:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 85 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">27 °C</p>
															<p>/</p>
															<p title="Cảm giác như">30 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>17:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 88 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">26 °C</p>
															<p>/</p>
															<p title="Cảm giác như">27 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>18:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10n@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 90 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">25 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>19:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10n@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 90 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">25 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>20:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10n@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 90 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">25 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>21:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10n@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 91 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>22:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>23:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>00:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>01:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>02:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">23 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>03:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">23 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>04:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">23 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>05:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">23 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>06:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 91 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">23 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>07:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 88 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>08:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 83 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">26 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>09:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 78 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">27 °C</p>
															<p>/</p>
															<p title="Cảm giác như">29 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>Hiện tại</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 73 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">28 °C</p>
															<p>/</p>
															<p title="Cảm giác như">31 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>11:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 71 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">29 °C</p>
															<p>/</p>
															<p title="Cảm giác như">32 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>12:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 70 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">29 °C</p>
															<p>/</p>
															<p title="Cảm giác như">33 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>13:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 70 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">29 °C</p>
															<p>/</p>
															<p title="Cảm giác như">33 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>14:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 72 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">29 °C</p>
															<p>/</p>
															<p title="Cảm giác như">33 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>15:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 79 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">28 °C</p>
															<p>/</p>
															<p title="Cảm giác như">32 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>16:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 86 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">27 °C</p>
															<p>/</p>
															<p title="Cảm giác như">30 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>17:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																title="Mưa nhẹ" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 90 %
															</div>
														</div>
														<p class="mb-0">Mưa nhẹ</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">26 °C</p>
															<p>/</p>
															<p title="Cảm giác như">27 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>18:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 91 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">25 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>19:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">25 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>20:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">25 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>21:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 93 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>22:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 93 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>23:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>00:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>01:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 92 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">25 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>02:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 91 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>03:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 91 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>04:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 90 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>05:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04n@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 89 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>06:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Nhiều mây" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 89 %
															</div>
														</div>
														<p class="mb-0">Nhiều mây</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">24 °C</p>
															<p>/</p>
															<p title="Cảm giác như">24 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>07:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Mây cụm" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 86 %
															</div>
														</div>
														<p class="mb-0">Mây cụm</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">25 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
											<div class="carousel-item col-md-3  ">
												<div class="location-wheather">
													<div class="card">
														<h3 class="card-city-title">
															<span>08:00</span>

														</h3>
														<div class="card-city-body">
															<img
																src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																title="Mây cụm" />
															<div class="precipitation" title="Lượng mưa">
																<i class="bi bi-droplet"></i> 79 %
															</div>
														</div>
														<p class="mb-0">Mây cụm</p>
														<div class="card-city-footer">
															<p title="Nhiệt độ trung bình">26 °C</p>
															<p>/</p>
															<p title="Cảm giác như">26 °C</p>
														</div>
													</div>
												</div>

											</div>
										</div>
										<span class="carousel-control-prev" href="#carousel-hourly"
											role="button" data-slide="prev"> <span
											class="carousel-control-prev-icon" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</span> <span class="carousel-control-next" href="#carousel-hourly"
											role="button" data-slide="next"> <span
											class="carousel-control-next-icon" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</span>
									</div>
								</div>

								<div class="current-location">
									<div class="weather-feature">
										<div
											class="d-flex flex-wrap justify-content-between align-items-center mt-2 mb-2">
											<h2>Thời tiết Ninh Thuận những ngày tới</h2>
											<div class="weather-feature-day">
												<h3>
													<a href="/ninh-thuan/ngay-mai"
														class="weather-feature-day-btn"> Ngày mai </a>
												</h3>
												<h3>
													<a href="/ninh-thuan/3-ngay-toi"
														class="weather-feature-day-btn"> 3 ngày </a>
												</h3>
												<h3>
													<a href="/ninh-thuan/5-ngay-toi"
														class="weather-feature-day-btn">5 ngày</a>
												</h3>
												<h3>
													<a href="/ninh-thuan/7-ngay-toi"
														class="weather-feature-day-btn">7 ngày</a>
												</h3>
												<h3>
													<a href="/ninh-thuan/10-ngay-toi"
														class="weather-feature-day-btn">10 ngày</a>
												</h3>
												<h3>
													<a href="/ninh-thuan/15-ngay-toi"
														class="weather-feature-day-btn">15 ngày</a>
												</h3>
												<h3>
													<a href="/ninh-thuan/30-ngay-toi"
														class="weather-feature-day-btn">30 ngày</a>
												</h3>
											</div>
										</div>

										<div id="carousel-days" class="carousel slide"
											data-ride="carousel" data-interval="9000" data-touch="true">
											<div class="carousel-inner row w-100 mx-auto" role="listbox">
												<div class="carousel-item col-md-3  active">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>Hôm nay</span>

															</h3>
															<div class="card-city-body">
																<img
																	src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																	alt="Mưa nhẹ" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 75 %
																</div>
															</div>
															<p class="mb-0">Mưa nhẹ</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">24 °C</p>
																<p>/</p>
																<p title="Cao nhất">29 °C</p>
															</div>
														</div>
													</div>

												</div>
												<div class="carousel-item col-md-3  ">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>T6 Ngày 25</span>

															</h3>
															<div class="card-city-body">
																<img
																	src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																	alt="Mưa nhẹ" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 71 %
																</div>
															</div>
															<p class="mb-0">Mưa nhẹ</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">23 °C</p>
																<p>/</p>
																<p title="Cao nhất">29 °C</p>
															</div>
														</div>
													</div>

												</div>
												<div class="carousel-item col-md-3  ">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>T7 Ngày 26</span>

															</h3>
															<div class="card-city-body">
																<img
																	src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																	alt="Mưa nhẹ" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 80 %
																</div>
															</div>
															<p class="mb-0">Mưa nhẹ</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">24 °C</p>
																<p>/</p>
																<p title="Cao nhất">28 °C</p>
															</div>
														</div>
													</div>

												</div>
												<div class="carousel-item col-md-3  ">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>CN Ngày 27</span>

															</h3>
															<div class="card-city-body">
																<img
																	src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																	alt="Mưa nhẹ" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 72 %
																</div>
															</div>
															<p class="mb-0">Mưa nhẹ</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">23 °C</p>
																<p>/</p>
																<p title="Cao nhất">29 °C</p>
															</div>
														</div>
													</div>

												</div>
												<div class="carousel-item col-md-3  ">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>T2 Ngày 28</span>

															</h3>
															<div class="card-city-body">
																<img
																	src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																	alt="Mưa nhẹ" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 73 %
																</div>
															</div>
															<p class="mb-0">Mưa nhẹ</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">23 °C</p>
																<p>/</p>
																<p title="Cao nhất">29 °C</p>
															</div>
														</div>
													</div>

												</div>
												<div class="carousel-item col-md-3  ">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>T3 Ngày 29</span>

															</h3>
															<div class="card-city-body">
																<img alt="Mây rải rác" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 71 %
																</div>
															</div>
															<p class="mb-0">Mây rải rác</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">23 °C</p>
																<p>/</p>
																<p title="Cao nhất">29 °C</p>
															</div>
														</div>
													</div>

												</div>
												<div class="carousel-item col-md-3  ">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>T4 Ngày 30</span>

															</h3>
															<div class="card-city-body">
																<img
																	src="https://data.thoitiet.vn/weather/icons/04d@2x.png"
																	alt="Nhiều mây" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 70 %
																</div>
															</div>
															<p class="mb-0">Nhiều mây</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">23 °C</p>
																<p>/</p>
																<p title="Cao nhất">30 °C</p>
															</div>
														</div>
													</div>

												</div>
												<div class="carousel-item col-md-3  ">
													<div class="location-wheather">
														<div class="card">
															<h3 class="card-city-title">
																<span>T5 Ngày 01</span>

															</h3>
															<div class="card-city-body">
																<img
																	src="https://data.thoitiet.vn/weather/icons/10d@2x.png"
																	alt="Mưa nhẹ" />
																<div class="precipitation" title="Lượng mưa">
																	<i class="bi bi-droplet"></i> 71 %
																</div>
															</div>
															<p class="mb-0">Mưa nhẹ</p>
															<div class="card-city-footer">
																<p title="Thấp nhất">24 °C</p>
																<p>/</p>
																<p title="Cao nhất">30 °C</p>
															</div>
														</div>
													</div>

												</div>
											</div>
											<span class="carousel-control-prev" href="#carousel-days"
												role="button" data-slide="prev"> <span
												class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="sr-only">Previous</span>
											</span> <span class="carousel-control-next" href="#carousel-days"
												role="button" data-slide="next"> <span
												class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="sr-only">Next</span>
											</span>
										</div>
									</div>
								</div>



							</div>
						</div>

					</div>







				</div>
			</div>
			</div>
		</section>





	</main>

	<script src="lib/jquery/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
		integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
		crossorigin="anonymous"></script>
	<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"
		crossorigin="anonymous"></script>
	<script src="js/bootstrap-autocomplete.min.js"></script>


	<script src="/js/site.js?v=-x9aILkIPryywVnKibGxdP2AziyXdL53OxrXysZHi_w"></script>
	<script src="/js/geo.js?v=cvH2dB9EJjIquKHZG_1_XAheDeVwvIrjPbeW2Hj5Ywc"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0/dist/chartjs-plugin-datalabels.min.js"></script>


	<style>
@media ( max-width :786px) {
	.container {
		padding-left: 0;
		padding-right: 0;
		overflow: hidden;
	}
}
</style>



</body>
</html>
    