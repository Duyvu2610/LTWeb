<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
	rel="stylesheet" />
</head>
<body class="scroll-smooth">
	<jsp:include page="Header.jsp" />
	<div class="bg-[#F9F9F9]">
		<div class="hidden md:block md:relative md:bottom-80">
			<jsp:include page="search-bar.jsp" />
		</div>
		<div
			class="h-[200px] mt-[88px] px-12 pt-4 bg-cover bg-bottom hidden md:block"
			style="background-image: url(./images/airplane-background.svg); background-repeat: no-repeat;">

			<nav class="flex" aria-label="Breadcrumb">
				<ol class="inline-flex items-center space-x-1 md:space-x-3">
					<li class="inline-flex items-center"><a
						href="javascript:history.back()"
						class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-blue-600 dark:text-gray-400 dark:hover:text-white">
							<svg class="w-3 h-3 mr-2.5" aria-hidden="true"
								xmlns="http://www.w3.org/2000/svg" fill="currentColor"
								viewBox="0 0 20 20">
          <path
									d="m19.707 9.293-2-2-7-7a1 1 0 0 0-1.414 0l-7 7-2 2a1 1 0 0 0 1.414 1.414L2 10.414V18a2 2 0 0 0 2 2h3a1 1 0 0 0 1-1v-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v4a1 1 0 0 0 1 1h3a2 2 0 0 0 2-2v-7.586l.293.293a1 1 0 0 0 1.414-1.414Z" />
        </svg> Home
					</a></li>
					<li aria-current="page">
						<div class="flex items-center">
							<svg class="w-3 h-3 text-gray-400 mx-1" aria-hidden="true"
								xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 6 10">
          <path stroke="currentColor" stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4" />
        </svg>
							<span
								class="ml-1 text-sm font-medium text-gray-500 md:ml-2 dark:text-gray-400">Flight</span>
						</div>
					</li>

				</ol>
			</nav>
		</div>
		<c:choose>
			<c:when test="${false}">
				<jsp:include page="flights.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include page="flight-detail.jsp" />
			</c:otherwise>
		</c:choose>
		
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>