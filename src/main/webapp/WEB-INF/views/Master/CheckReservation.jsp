<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reservation</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">

<!--Bootstrap icons-->
<link href="/resources/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">

<!--Simplebar css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/css/style.min.css"
	id="switchThemeStyle">
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">
</head>
<style>
.mb-4 {
	margin-bottom: 5.5rem !important;
}
</style>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>
	<!--Header Start-->
	<header
		class="z-index-fixed header-transparent header-absolute-top pt-lg-2">
		<nav class="navbar navbar-expand-lg navbar-light navbar-link-white">
			<div class="container position-relative">
				<a class="navbar-brand" href="/master/MasterPage.do"> <img
					src="/resources/img/logo/white-logo.png" alt="" class="img-fluid">
				</a>
			</div>
		</nav>
	</header>

	<!--Main content-->
	<main class="main-content" id="main-content">
		<section class="position-relative bg-dark text-white">
			<div class="container position-relative py-9 py-lg-15">
				<div class="row pt-9 pt-lg-9">
					<div class="col-xl-9">
						<h1 class="display-4 mb-3">Reservation</h1>
						<h6>(Check the reservation rate)</h6>


					</div>
				</div>
				<!--/.row-->
			</div>
			<!--/.content-->
		</section>
		<!--/section-->
	</main>

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">


			<!--///Sidebar close button for 991px or below devices///-->
			<div class="sidebar-close d-lg-none">
				<a href="#"></a>
			</div>
			<!--///.Sidebar close end///-->


			<!--///////////Page content wrapper///////////////-->
			<main class="d-flex flex-column flex-row-fluid">


				
				<!--//Page Toolbar End//-->
				<!--//Page content//-->
				<div class="content pb-0 p-12 d-flex flex-column-fluid">
					<div class="container-fluid px-0">
						<div class="row">
							<div class="col-12 col-lg-12 mb-4">
								<div class="card overflow-hidden">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Ticking Top</h5>
									</div>
									<div class="card-body p-0" style="height: 350px">
									<center>
									<img class  src="http://xdo19.cafe24.com/resources/img/visualizing/ticking_top_N.jpg" style="height: 300px">
									</center>
										<%-- <canvas id="chart_area"></canvas> --%>
									</div>
								</div>
							</div>
							<div class="col-12 col-lg-12 mb-4">
								<div class="card overflow-hidden">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Ticking Top</h5>
									</div>
									<div class="card-body p-0" style="height: 350px">
									<center>
									<img class  src="http://xdo19.cafe24.com/resources/img/visualizing/ticking_top_N_line&bar.jpg" style="height: 300px">
									</center>
										<%-- <canvas id="chart_line"></canvas> --%>
									</div>
								</div>
							</div>
							<div class="col-12 col-lg-12 mb-4">
								<div class="card overflow-hidden">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Month Ticketing</h5>
									</div>
									<div class="card-body p-0" style="height: 400px">
									<center>
									<img class  src="http://xdo19.cafe24.com/resources/img/visualizing/month_ticketing_line&bar.jpg" style="height: 300px">
									</center>
										<%-- <canvas id="chart_mixed"></canvas> --%>
									</div>
								</div>
							</div>
							<div class="col-12 col-lg-12 mb-4">
								<div class="card overflow-hidden">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Gender Rate</h5>
									</div>
									<div class="card-body p-0" style="height: 400px">
									
									<img class  src="http://xdo19.cafe24.com/resources/img/visualizing/gender_rate.jpg" style="height: 300px">
									<img class  src="http://xdo19.cafe24.com/resources/img/visualizing/gender_bar.jpg" style="height: 300px">
									
										<%-- <canvas id="chart_bar"></canvas> --%>
									</div>
								</div>
							</div>
							<%-- <div class="col-12 col-lg-4 mb-4">
								<div class="card">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Polar area</h5>
									</div>
									<div class="card-body p-0" style="height: 300px">
										<canvas id="chart_polar"></canvas>
									</div>
								</div>
							</div> --%>
							<%-- <div class="col-12 col-lg-4 mb-4">
								<div class="card">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Pie Chart</h5>
									</div>
									<div class="card-body pt-0" style="height: 300px">
									<center>
										<canvas id="chart_pie"></canvas>
									</center>
									</div>
								</div>
							</div> --%>
							<%-- <div class="col-12 col-lg-4 mb-4">
								<div class="card">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Dougnut Chart</h5>
									</div>
									<div class="card-body pt-0" style="height: 300px">
										<canvas id="chart_dougnut"></canvas>
									</div>
								</div>
							</div> --%>
							<%-- <div class="col-12 mb-4">
								<div class="card">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Radar Chart</h5>
									</div>
									<div class="card-body pt-0" style="height: 400px">
										<canvas id="chart_radar"></canvas>
									</div>
								</div>
							</div> --%>
							<!-- <div class="col-12 mb-3">
								<h6 class="mb-0">Sparkline charts</h6>
							</div> -->
							<!--Sparkline charts-->
							<%-- <div class="col-12 col-lg-3 col-sm-6 mb-4">
								<div class="card card-body">
									<div class="d-flex align-items-center justify-content-between">
										<div>
											<span class="d-block">Earnings</span>
											<h4 class="mb-0">$87458</h4>
										</div>
										<div class="flex-grow-1 text-end">
											<i data-feather="trending-up" class="fe-1x text-success me-2"></i>
											<span>2%</span>
										</div>
									</div>
									<div style="height: 60px;">
										<canvas id="spark1"></canvas>
									</div>
								</div>
							</div> --%>
							<%-- <div class="col-12 col-lg-3 col-sm-6 mb-4">
								<div class="card card-body">
									<div class="d-flex align-items-center justify-content-between">
										<div>
											<span class="d-block">Earnings</span>
											<h4 class="mb-0">$87458</h4>
										</div>
										<div class="flex-grow-1 text-end">
											<i data-feather="trending-up" class="fe-1x text-success me-2"></i>
											<span>2%</span>
										</div>
									</div>
									<div style="height: 60px;">
										<canvas id="spark2"></canvas>
									</div>
								</div>
							</div> --%>
						<%-- 	<div class="col-12 col-lg-3 col-sm-6 mb-4">
								<div class="card card-body">
									<div class="d-flex align-items-center justify-content-between">
										<div>
											<span class="d-block">Sales</span>
											<h4 class="mb-0">7458</h4>
										</div>
										<div class="flex-grow-1 text-end">
											<i data-feather="trending-up" class="fe-1x text-success me-2"></i>
											<span>2%</span>
										</div>
									</div>
									<div style="height: 60px;">
										<canvas id="spark3"></canvas>
									</div>
								</div>
							</div> --%>
						<%-- 	<div class="col-12 col-lg-3 col-sm-6 mb-4">
								<div class="card card-body">
									<div class="d-flex align-items-center justify-content-between">
										<div>
											<span class="d-block">Tasks overview</span>
											<h4 class="mb-0">41/9</h4>
										</div>

										<div style="height: 80px; width: 80px">
											<canvas id="spark4"></canvas>
										</div>
									</div>
								</div>
							</div> --%>
						</div>
					</div>
				</div>
				<!--//Page content End//-->
				<!--Footer Start-->

				<footer id="footer"
					class="overflow-hidden position-relative bg-dark text-white">
					<!--Divider-->
					<svg class="position-absolute start-0 bottom-0 text-gray-800 h-40"
						preserveAspectRatio="none" width="100%" height="250"
						viewBox="0 0 1200 250" fill="none"
						xmlns="http://www.w3.org/2000/svg">
                <path opacity="0.1" fill-rule="evenodd"
							clip-rule="evenodd"
							d="M0 62.5L22 46.875C44 31.25 89 0 133 0C178 0 222 31.25 267 72.9167C311 114.583 356 166.667 400 187.5C444 208.333 489 197.917 533 182.292C578 166.667 622 145.833 667 114.583C711 83.3333 756 41.6667 800 26.0417C844 10.4167 889 20.8333 933 62.5C978 104.167 1022 177.083 1067 208.333C1111 239.583 1156 229.167 1178 223.958L1200 218.75V250H1178C1156 250 1111 250 1067 250C1022 250 978 250 933 250C889 250 844 250 800 250C756 250 711 250 667 250C622 250 578 250 533 250C489 250 444 250 400 250C356 250 311 250 267 250C222 250 178 250 133 250C89 250 44 250 22 250H0V62.5Z"
							fill="currentColor" />
                <path opacity="0.1" fill-rule="evenodd"
							clip-rule="evenodd"
							d="M0 93.667L24.8889 87.4756C49.7778 82.8321 99.5556 71.9971 149.333 93.667C200.889 113.789 250.667 166.416 300.444 186.538C350.222 208.208 400 197.373 449.778 171.06C499.556 144.746 549.333 102.954 600.889 76.6407C650.667 50.3272 700.444 41.0401 750.222 61.1622C800 82.8321 849.778 135.459 899.556 129.268C949.333 124.624 1000.89 61.1622 1050.67 50.3272C1100.44 41.0401 1150.22 82.8321 1175.11 102.954L1200 124.624V250H1175.11C1150.22 250 1100.44 250 1050.67 250C1000.89 250 949.333 250 899.556 250C849.778 250 800 250 750.222 250C700.444 250 650.667 250 600.889 250C549.333 250 499.556 250 449.778 250C400 250 350.222 250 300.444 250C250.667 250 200.889 250 149.333 250C99.5556 250 49.7778 250 24.8889 250H0V93.667Z"
							fill="currentColor" />
            </svg>
					<div
						class="container pt-9 pt-lg-11 pb-5 pb-lg-7 position-relative z-index-1">
						<div class="row mb-5 mb-lg-7">
							<div class="col-md-4 mb-5 mb-md-0 text-md-center order-md-2">
								<a href="/master/MasterPage.do"><img
									src="/resources/img/logo/white-logo.png"
									class="width-10x d-block h-auto mx-md-auto" alt=""></a>
							</div>
							<div class="col-md-4 order-md-1 mb-3 mb-md-0">
								<a href="mailto:mail@domain.com"
									class="fs-4 link-hover-underline">mail@domain.com</a>
							</div>
							<div class="col-md-4 text-md-end order-md-3">
								<a href="mailto:mail@domain.com"
									class="fs-4 link-hover-underline">+01 123-4567-890</a>
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col-md-8 order-md-last mb-3 mb-md-0">
								<div class="d-flex flex-wrap justify-content-md-end me-n4">
									<a href="#!"
										class="small text-muted me-4 link-hover-underline my-2 block">Properties</a>
									<a href="#!"
										class="small text-muted me-4 link-hover-underline my-2 block">Careers</a>
									<a href="#!"
										class="small text-muted me-4 link-hover-underline my-2 block">Company</a>
									<a href="#!"
										class="small text-muted me-4 link-hover-underline my-2 block">Privacy
										policy</a>
								</div>
							</div>
							<div class="col-md-4 order-md-1 small">
								<span class="d-block my-2 lh-sm text-muted">&copy;
									Copyright <script>
										document
												.write(new Date().getFullYear())
									</script>. Fiennale
								</span>
							</div>
						</div>
					</div>

				</footer>
			</main>
			<!--///////////Page content wrapper End///////////////-->
		</div>
	</div>


	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/vendor/feather.min.js"></script>
	<script src="/resources/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>

	<!--////////////Theme Core scripts End/////////////////-->


	<!--Charts-->
	<script src="/resources/vendor/chart.min.js"></script>
	<script src="/resources/vendor/chartjs-plugin-datalabels.min.js"></script>
	<!-- <script>
		//Chart colors
		function hexToRGB(hex, alpha) {
			var r = parseInt(hex.slice(1, 3), 16), g = parseInt(
					hex.slice(3, 5), 16), b = parseInt(hex.slice(5, 7), 16);

			if (alpha) {
				return "rgba(" + r + ", " + g + ", " + b + ", " + alpha + ")";
			} else {
				return "rgb(" + r + ", " + g + ", " + b + ")";
			}
		}

		var style = getComputedStyle(document.body);
		var rgbaWarning = hexToRGB(style.getPropertyValue('--bs-warning'), 0.5);
		var rgbaSuccess = hexToRGB(style.getPropertyValue('--bs-success'), 0.5);
		var rgbaPrimary = hexToRGB(style.getPropertyValue('--bs-primary'), 0.5);
		var rgbaDanger = hexToRGB(style.getPropertyValue('--bs-danger'), 0.5);
		var cPrimary = style.getPropertyValue('--bs-primary');
		var cWarning = style.getPropertyValue('--bs-warning');
		var cSecondary = style.getPropertyValue('--bs-secondary');
		var cSuccess = style.getPropertyValue('--bs-success');
		var cInfo = style.getPropertyValue('--bs-info');
		var cDanger = style.getPropertyValue('--bs-danger');
		var cMuted = style.getPropertyValue('--bs-gray-500');
		var cLight = style.getPropertyValue('--bs-gray-100');
		var cGray = style.getPropertyValue('--bs-gray-300');
		var cFont = style.getPropertyValue('--bs-font-sans-serif');
		var bgBody = style.getPropertyValue('--bs-body-bg');
		var cBody = style.getPropertyValue('--bs-body-color');
		Chart.defaults.font.family = cFont;

		//Spark1
		const ctx1 = document.getElementById('spark1').getContext('2d');
		let chartSpark1 = new Chart(
				ctx1,
				{
					type : 'line',
					data : {
						labels : [ '1 Jan', '2 Jan', '3 Jan', '4 Jan', '5 Jan',
								'6 Jan', '7 Jan', '8 Jan', '9 Jan', '10 Jan' ],
						datasets : [ {
							data : [ 311, 123, 546, 222, 636, 1119, 539, 847,
									1024, 983 ],
							borderColor : cPrimary,
							borderWidth : 2,
							backgroundColor : rgbaPrimary,
							hoverBorderColor : 'transparent',
							tension : .4,
							pointHoverRadius : 0,
							fill : true,
							pointRadius : 0,
						} ]
					},
					options : {
						maintainAspectRatio : false,
						responsive : true,
						plugins : {
							legend : {
								display : false
							},
							tooltip : {
								position : 'nearest',
								boxWidth : 6,
								boxHeight : 6,
								boxPadding : 6,
								usePointStyle : true,
								backgroundColor : cSecondary,
								titleColor : cLight,
								bodyColor : cLight,
								footerColor : cLight,
								padding : 6,
								cornerRadius : 6,
								titleSpacing : 2,
								bodySpacing : 4,

								font : {
									family : cFont
								},
								callbacks : {
									label : function(context) {
										let label = context.dataset.label || '';

										if (label) {
											label += ': ';
										}
										if (context.parsed.y !== null) {
											label += new Intl.NumberFormat(
													'en-US', {
														style : 'currency',
														currency : 'USD'
													}).format(context.parsed.y);
										}
										return label;
									}
								}
							},
						},
						interaction : {
							mode : 'index',
							intersect : false,
						},
						stacked : false,
						scales : {
							x : {
								display : false
							},
							y : {
								display : false,
								grid : {
									drawBorder : false,
									display : false,
									drawOnChartArea : true,
									drawTicks : false,
									borderDash : [ 5, 5 ],
								},
								ticks : {
									display : false,
									padding : 50,
									color : cMuted,
								}
							}
						}
					}
				});

		//Spark2
		const ctx2 = document.getElementById('spark2').getContext('2d');
		let chartSpark2 = new Chart(
				ctx2,
				{
					type : 'bar',
					data : {
						labels : [ '1 Jan', '2 Jan', '3 Jan', '4 Jan', '5 Jan',
								'6 Jan', '7 Jan', '8 Jan', '9 Jan', '10 Jan' ],
						datasets : [ {
							data : [ 311, 223, 546, 222, 636, 719, 539, 647,
									824, 783 ],
							borderColor : 'transparent',
							borderWidth : 0,
							backgroundColor : cSuccess,
							maxBarThickness : 8,
							borderRadius : 6,
							borderSkipped : true
						} ]
					},
					options : {
						maintainAspectRatio : false,
						responsive : true,
						plugins : {
							legend : {
								display : false
							},
							tooltip : {
								position : 'nearest',
								boxWidth : 6,
								boxHeight : 6,
								boxPadding : 6,
								usePointStyle : true,
								backgroundColor : cSecondary,
								titleColor : cLight,
								bodyColor : cLight,
								footerColor : cLight,
								padding : 6,
								cornerRadius : 6,
								titleSpacing : 2,
								bodySpacing : 4,

								font : {
									family : cFont
								},
								callbacks : {
									label : function(context) {
										let label = context.dataset.label || '';

										if (label) {
											label += ': ';
										}
										if (context.parsed.y !== null) {
											label += new Intl.NumberFormat(
													'en-US', {
														style : 'currency',
														currency : 'USD'
													}).format(context.parsed.y);
										}
										return label;
									}
								}
							},
						},
						interaction : {
							mode : 'index',
							intersect : false,
						},
						stacked : false,
						scales : {
							x : {
								display : false
							},
							y : {
								display : false,
								grid : {
									drawBorder : false,
									display : false,
									drawOnChartArea : true,
									drawTicks : false,
									borderDash : [ 5, 5 ],
								},
								ticks : {
									display : false,
									padding : 50,
									color : cMuted,
								}
							}
						}
					}
				});
		//Spark3
		const ctx3 = document.getElementById('spark3').getContext('2d');
		let chartSpark3 = new Chart(ctx3,
				{
					type : 'line',
					data : {
						labels : [ '1 Jan', '2 Jan', '3 Jan', '4 Jan', '5 Jan',
								'6 Jan', '7 Jan', '8 Jan', '9 Jan', '10 Jan' ],
						datasets : [ {
							data : [ 311, 223, 546, 222, 636, 719, 539, 647,
									824, 783 ],
							borderColor : cPrimary,
							borderWidth : 3,
							backgroundColor : cPrimary,
							tension : .4,
							pointRadius : 0,
							pointHoverRadius : 0,
						} ]
					},
					options : {
						maintainAspectRatio : false,
						responsive : true,
						plugins : {
							legend : {
								display : false
							},
							tooltip : {
								position : 'nearest',
								boxWidth : 6,
								boxHeight : 6,
								boxPadding : 6,
								usePointStyle : true,
								backgroundColor : cSecondary,
								titleColor : cLight,
								bodyColor : cLight,
								footerColor : cLight,
								padding : 6,
								cornerRadius : 6,
								titleSpacing : 2,
								bodySpacing : 4,

								font : {
									family : cFont
								}
							},
						},
						interaction : {
							mode : 'index',
							intersect : false,
						},
						stacked : false,
						scales : {
							x : {
								display : false
							},
							y : {
								display : false,
								grid : {
									drawBorder : false,
									display : false,
									drawOnChartArea : true,
									drawTicks : false,
									borderDash : [ 5, 5 ],
								},
								ticks : {
									display : false,
									padding : 50,
									color : cMuted,
								}
							}
						}
					}
				});
		//Spark4
		const ctx4 = document.getElementById('spark4').getContext('2d');
		let chartSpark4 = new Chart(ctx4, {
			type : 'doughnut',
			data : {
				labels : [ 'Done', 'Due', ],
				datasets : [ {
					data : [ 41, 8 ],
					backgroundColor : [ cPrimary, cGray ],
					borderWidth : 0,
					borderColor : 'transparent',
					hoverBorderColor : 'transparent',
				} ]
			},
			options : {
				maintainAspectRatio : false,
				responsive : true,
				datasets : {
					doughnut : {
						cutout : '80%',
						spacing : 1,
					}
				},
				plugins : {
					legend : {
						display : false,
					},
					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 8,
						cornerRadius : 8,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
					}
				}
			}
		});

		//Line chart
		const ctx5 = document.getElementById('chart_line').getContext('2d');
		let chartLine = new Chart(ctx5, {
			type : 'line',
			data : {
				labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
				datasets : [
						{
							label : 'Last Year',
							data : [ 2234, 2327, 2239, 2134, 2325, 2446, 2357,
									2248, 2439, 2361, 2471, 2362 ],
							borderColor : [ cWarning ],
							backgroundColor : [ cWarning ],
							borderWidth : 3,
							order : 1,
							tension : .4,
							pointRadius : 0,
							pointHoverRadius : 0
						},
						{
							label : 'This Year',
							data : [ 2323, 2424, 2355, 2266, 2447, 2568, 2459,
									2370, 2581, 2465, 2613, 2414 ],
							borderColor : [ cPrimary ],
							backgroundColor : [ cPrimary ],
							borderWidth : 3,
							tension : .4,
							order : 1,
							pointRadius : 0,
							pointHoverRadius : 0
						} ]
			},

			options : {
				maintainAspectRatio : false,
				responsive : true,

				title : {
					display : false,
				},
				plugins : {
					legend : {
						display : true,
						align : 'left',
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},

					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 12,
						cornerRadius : 12,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
						callbacks : {
							label : function(context) {
								let label = context.dataset.label || '';

								if (label) {
									label += ': ';
								}
								if (context.parsed.y !== null) {
									label += new Intl.NumberFormat('en-US', {
										style : 'currency',
										currency : 'USD'
									}).format(context.parsed.y);
								}
								return label;
							}
						}
					},
				},
				interaction : {
					mode : 'index',
					intersect : false,
				},
				stacked : false,
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
						},
						ticks : {
							maxTicksLimit : 6,
							display : true,
							padding : 16,
							color : cMuted,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : cMuted,
							padding : 16,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					}
				}
			},
		});

		//------------------------Overview Area
		const ctx6 = document.getElementById('chart_area').getContext('2d');
		let chartArea = new Chart(ctx6, {
			type : 'line',
			data : {
				labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
				datasets : [
						{
							label : 'Last Year',
							data : [ 2234, 2327, 2239, 2134, 2325, 2446, 2357,
									2248, 2439, 2361, 2471, 2362 ],
							borderColor : [ cGray ],
							backgroundColor : [ cGray ],
							borderWidth : 0,
							order : 1,
							tension : .4,
							pointRadius : 0,
							pointHoverRadius : 0,
							fill : true
						},
						{
							label : 'This Year',
							data : [ 2323, 2424, 2355, 2266, 2447, 2568, 2459,
									2370, 2581, 2465, 2613, 2414 ],
							borderColor : [ 'transparent' ],
							backgroundColor : [ cPrimary ],
							fill : true,
							borderWidth : 0,
							tension : .4,
							order : 1,
							pointRadius : 0,
							pointHoverRadius : 0
						} ]
			},

			options : {
				maintainAspectRatio : false,
				responsive : true,

				title : {
					display : false,
				},
				plugins : {
					legend : {
						display : true,
						align : 'left',
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},

					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 12,
						cornerRadius : 12,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
						callbacks : {
							label : function(context) {
								let label = context.dataset.label || '';

								if (label) {
									label += ': ';
								}
								if (context.parsed.y !== null) {
									label += new Intl.NumberFormat('en-US', {
										style : 'currency',
										currency : 'USD'
									}).format(context.parsed.y);
								}
								return label;
							}
						}
					},
				},
				interaction : {
					mode : 'index',
					intersect : false,
				},
				stacked : false,
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
						},
						ticks : {
							maxTicksLimit : 6,
							display : true,
							padding : 16,
							color : cMuted,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : cMuted,
							padding : 16,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					}
				}
			},
		});

		//-----------------------Chart Polar------------------

		const ctx7 = document.getElementById('chart_polar').getContext('2d');
		let chartPolarArea = new Chart(ctx7, {
			type : 'polarArea',
			data : {
				labels : [ 'Failed', 'Pending', 'Success' ],
				datasets : [ {
					data : [ 38, 65, 99 ],
					backgroundColor : [ cDanger, cPrimary, cSuccess ],
					borderWidth : [ 0, 0, 0 ],
					color : [ cDanger, cPrimary, cSuccess ],
				}, ]
			},
			plugins : [ ChartDataLabels ],
			options : {
				scales : {
					r : {
						ticks : {
							display : false
						},
						grid : {
							display : false
						}
					},
				},
				maintainAspectRatio : false,
				responsive : true,
				plugins : {
					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 12,
						cornerRadius : 12,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
					},
					legend : {
						display : true,
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},
					datalabels : {
						anchor : 'end',
						color : function(context) {
							return context.dataset.color;
						},
						borderColor : 'transparent',
						borderRadius : 25,
						borderWidth : 2,
						backgroundColor : 'white',
						font : {
							weight : '400'
						},
						formatter : Math.round,
						padding : 6
					},
				}
			}
		});

		//--------------------------Chart mixed--------------------
		const ctx8 = document.getElementById('chart_mixed').getContext('2d');
		let chartMixed = new Chart(ctx8, {
			type : 'bar',
			data : {
				datasets : [ {
					label : 'Bar Dataset',
					data : [ 110, 120, 310, 140, 360, 260, 120 ],
					// this dataset is drawn below
					order : 2,
					backgroundColor : cPrimary,
					fill : true,
					maxBarThickness : 12,
					borderSkipped : false,
					borderRadius : 12
				}, {
					label : 'Line Dataset',
					data : [ 120, 230, 150, 360, 260, 180, 240 ],
					type : 'line',
					order : 1,
					borderWidth : 3,
					borderColor : cSuccess,
					backgroundColor : cSuccess,
					tension : .3
				} ],
				labels : [ 'January', 'February', 'March', 'April', 'May',
						'Jun', 'Jul' ]
			},
			options : {
				maintainAspectRatio : false,
				responsive : true,

				title : {
					display : false,
				},
				plugins : {
					legend : {
						display : true,
						align : 'left',
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},

					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 12,
						cornerRadius : 12,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
						callbacks : {
							label : function(context) {
								let label = context.dataset.label || '';

								if (label) {
									label += ': ';
								}
								if (context.parsed.y !== null) {
									label += new Intl.NumberFormat('en-US', {
										style : 'currency',
										currency : 'USD'
									}).format(context.parsed.y);
								}
								return label;
							}
						}
					},
				},
				interaction : {
					mode : 'index',
					intersect : false,
				},
				stacked : false,
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
						},
						ticks : {
							maxTicksLimit : 6,
							display : true,
							padding : 16,
							color : cMuted,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : cMuted,
							padding : 16,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					}
				}
			},
		})

		//--------------------------Bar chart=------------------
		const ctx9 = document.getElementById('chart_bar').getContext('2d');
		let chartBar = new Chart(ctx9, {
			type : 'bar',
			data : {
				labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
				datasets : [
						{
							label : 'Last Year',
							data : [ 1534, 2027, 1239, 1434, 2025, 2046, 1657,
									2048, 2039, 1561, 2071, 1662 ],
							borderColor : [ cWarning ],
							backgroundColor : [ cWarning ],
							borderWidth : 0,
							order : 1,
							maxBarThickness : 12,
							borderRadius : 12,

							categoryPercentage : .5,
							barPercentage : .9
						},
						{
							label : 'This Year',
							data : [ 2323, 2424, 2355, 2266, 2447, 2568, 2459,
									2370, 2581, 2465, 2613, 2414 ],
							borderColor : [ cPrimary ],
							backgroundColor : [ cPrimary ],
							borderWidth : 0,
							order : 1,
							maxBarThickness : 12,
							borderRadius : 12,

							categoryPercentage : .5,
							barPercentage : .9
						} ]
			},

			options : {
				maintainAspectRatio : false,
				responsive : true,
				title : {
					display : false,
				},
				plugins : {
					legend : {
						display : true,
						align : 'left',
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},

					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 12,
						cornerRadius : 12,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
						callbacks : {
							label : function(context) {
								let label = context.dataset.label || '';

								if (label) {
									label += ': ';
								}
								if (context.parsed.y !== null) {
									label += new Intl.NumberFormat('en-US', {
										style : 'currency',
										currency : 'USD'
									}).format(context.parsed.y);
								}
								return label;
							}
						}
					},
				},
				interaction : {
					mode : 'index',
					intersect : false,
				},
				stacked : false,
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
						},
						ticks : {
							maxTicksLimit : 6,
							display : true,
							padding : 16,
							color : cMuted,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : cMuted,
							padding : 16,
							font : {
								size : 12,
								family : cFont,
								style : 'normal',
								lineHeight : 2
							},
						}
					}
				}
			},
		});

		//doughnut
		const ctx10 = document.getElementById('chart_dougnut').getContext('2d');
		let chartDougnut = new Chart(ctx10, {
			type : 'doughnut',
			data : {
				labels : [ 'Direct', 'Reffaral', 'Organic' ],
				datasets : [ {
					data : [ 41, 28, 31 ],
					backgroundColor : [ cPrimary, cGray, cWarning ],
					borderWidth : 0,
					borderColor : 'transparent',
					hoverBorderColor : 'transparent',
				} ]
			},
			options : {
				maintainAspectRatio : false,
				responsive : true,
				datasets : {
					doughnut : {
						cutout : '80%',
						spacing : 1,
					}
				},
				plugins : {
					legend : {
						display : true,
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},
					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 8,
						cornerRadius : 8,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
					}
				}
			}
		});

		//pie
		const ctx11 = document.getElementById('chart_pie').getContext('2d');
		let chartPie = new Chart(ctx11, {
			type : 'pie',
			data : {
				labels : [ 'Direct', 'Reffaral', 'Organic' ],
				datasets : [ {
					data : [ 41, 28, 31 ],
					backgroundColor : [ cPrimary, cGray, cWarning ],
					borderWidth : 0,
					borderColor : 'transparent',
					hoverBorderColor : 'transparent',
				} ]
			},
			options : {
				maintainAspectRatio : false,
				responsive : true,
				datasets : {
					doughnut : {
						cutout : '80%',
						spacing : 1,
					}
				},
				plugins : {
					legend : {
						display : true,
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},
					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 8,
						cornerRadius : 8,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
					}
				}
			}
		});

		const ctx12 = document.getElementById('chart_radar').getContext('2d');
		let chartRadar = new Chart(ctx12, {
			type : 'radar',
			data : {
				labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July' ],
				datasets : [ {
					label : 'Taskes Assigned',
					data : [ 76, 68, 95, 93, 65, 58, 46 ],
					fill : false,
					backgroundColor : rgbaPrimary,
					borderColor : cPrimary,
					pointBackgroundColor : cPrimary,
					pointBorderColor : cPrimary,
					pointHoverBackgroundColor : cPrimary,
					pointHoverBorderColor : cPrimary
				} ]
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : true,
						labels : {
							color : cMuted,
							boxWidth : 6,
							boxHeight : 6,
							usePointStyle : true,
							font : {
								family : cFont
							}
						}
					},
					tooltip : {
						boxWidth : 6,
						boxHeight : 6,
						boxPadding : 6,
						usePointStyle : true,
						backgroundColor : cSecondary,
						titleColor : cLight,
						bodyColor : cLight,
						footerColor : cLight,
						padding : 8,
						cornerRadius : 8,
						titleSpacing : 2,
						bodySpacing : 6,

						font : {
							family : cFont
						},
					}
				},
				elements : {
					point : {
						radius : 5,
						hoverRadius : 5,
						borderWidth : 0,
						hitRadius : 5
					}
				},
				scales : {
					r : {
						angleLines : {
							display : false
						},
						pointLabels : {
							display : true,
							color : cMuted
						},
						suggestedMin : 10,
						suggestedMax : 100,
						grid : {
							display : true
						},
						ticks : {
							display : false
						}
					},
				}
			},
		});
	</script> -->
</body>
</html>