<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Blank</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<style type="text/css">
	.before-arrow, .next-arrow{
		width :15px;
	}
	th, tbody > tr > td{
		width : 12%;
		text-align: center;
		text-overflow: ellipsis;
	}
	.search_select{
		outline : none;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
</script>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					shopproject manager <sup>ver0.1</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<!-- <li class="nav-item"><a class="nav-link" href="index.html">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li> -->

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">상품</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>상품 관리</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">상품 관리:</h6>
						<a class="collapse-item" href="buttons.html">상품 등록</a> <a
							class="collapse-item" href="cards.html">상품 관리</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
		<!-- 	<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a> <a
							class="collapse-item" href="utilities-border.html">Borders</a> <a
							class="collapse-item" href="utilities-animation.html">Animations</a>
						<a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div></li> -->

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Addons</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item active"><a class="nav-link" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>회원 관리</span>
			</a>
				<div id="collapsePages" class="collapse show"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="manager.do">Login</a> <a
							class="collapse-item" href="manager-register-page.do">Register</a>
						<a class="collapse-item" href="member-list.do">회원 목록</a>
						<a class="collapse-item" href="member-order-list.do">주문 내역 확인</a>
						<!-- <div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a
							class="collapse-item active" href="blank.html">Blank Page</a> -->
					</div>
				</div></li>

			<!-- Nav Item - Charts -->
			<!-- <li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li>

			Nav Item - Tables
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i> <span>Tables</span>
			</a></li> -->
			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"
						action="member-search.do" method="get">
						<div class="input-group">
						
							<select class="search_select" name="type">
								<option value="memberId">아이디</option>
								<option value="memberName">이름</option>
								<option value="address">주소</option>
							</select>
							<input type="text" class="form-control bg-light border-0 small search_input"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2" name="search">
							<div class="input-group-append">
								<button class="btn btn-primary search_btn">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- ---------------------------------------------- -->
						<!-- 관리자 top menu 아이콘 모음 로그인시 표시/ 비로그인시 삭제 -->
						<!-- ---------------------------------------------- -->
						<c:choose>
							<c:when test="${ sessionScope.manager_no != null}">
								<jsp:include page="template/manager/menu-top-icon.jsp"></jsp:include>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
						<!-- ------------------------------------------------- -->
						<!-- 관리자 top menu 아이콘 모음 로그인시 표시/ 비로그인시 삭제 끝 -->
						<!-- ------------------------------------------------- -->

					</ul>

				</nav>
				<!-- End of Topbar -->
				
				<!-- ------------------ -->
				<!-- ---페이지 내용 시작--- -->
				<!-- ------------------ -->
				
				<div class="container-fluid">
					<div class="col-lg-12 col-md-12 account_div">
						<div class="table-responsive member-table">
	   						<table class="table">
		   						<thead>
	                               <tr>
	                                   <th>주문 번호</th>
	                                   <th>상품 번호</th>
	                                   <th>이메일</th>
	                                   <th>주문 수량</th>
	                                   <th>주소(우편번호)</th>
	                                   <th>주소</th>
	                                   <th>주소(상세주소)</th>
	                                   <th>총 금액</th>
	                               </tr>
	                               </thead>
	                               <tbody>
	                               	   <c:forEach var="p" items="${requestScope.product }">
	                               	   		<tr>
			                               		<td>${p.memberOrderNo }</td>
			                               		<td>${p.productNo }</td>
			                               		<td>${p.memberId }</td>
			                               		<td>${p.orderQuantity }</td>
			                               		<td>${p.postNo }</td>
			                               		<td>${p.address }</td>
			                               		<td>${p.addressDetail }</td>
			                               		<td>${p.priceSum }</td>
		                               		</tr>   	  
	                               	   </c:forEach>
	                               </tbody>
	                               <tfoot>
	                               	<tr>
										<td colspan="7" class="table_footer"><c:if
												test="${requestScope.paging.previousPageGroup}">
												<a href="/member-order-list.do?pageNo=${paging.startPageOfPageGroup - 1 }"> <img src="img/back-button.png" class="before-arrow"> </a>
											</c:if> <c:forEach var="m"
												begin="${requestScope.paging.startPageOfPageGroup}"
												end="${requestScope.paging.endPageOfPageGroup}">
												<c:choose>
													<c:when test="${m == paging.currentPageNo }">
														<span class="paging_normal">${m }</span>
													</c:when>
													<c:otherwise>
														<a href="/member-order-list.do?pageNo=${m }">${m }</a>
													</c:otherwise>
												</c:choose>
											</c:forEach> <c:if test="${requestScope.paging.nextPageGroup}">
												<a href="/member-order-list.do?pageNo=${paging.endPageOfPageGroup + 1 }"> <img src="img/fast-forward.png" class="next-arrow"> </a>
											</c:if>
										</td>
									</tr>
	                               </tfoot>
							</table>
						</div>
					</div>
				</div>
				
				<!-- ------------------ -->
				<!-- ---페이지 내용 끝---- -->
				<!-- ------------------ -->
				
				<!-- /.container-fluid -->

			</div>

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="manager-logout.do">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

</body>

</html>