<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- <script src="https://cdn.tailwindcss.com"></script> -->
<link href="./css/output.css" rel="stylesheet">

</head>
<body>
	<%@ include file="jsp/Header.jsp"%>
	<div class="pt-[88px]">

		<div class="bg-right h-[560px] w-full relative md:bg-cover"
			style="background-image: url(./images/airplane-background.svg); background-repeat: no-repeat;">
			<div
				class="w-full h-full bg-gradient-to-br from-[#106CD9D1] to-[#5B8FC151] absolute"></div>
			<div
				class="pt-[42px] md:pt-[100px] md:pl-[133px] pl-[33px] text-[#FCFCFD] font-bold absolute ">
				<p class="text-4xl md:text-6xl">
					Amazing Flight<br> To Switzerland
				</p>
				<p class="text-lg pt-3 md:pt-6 md:text-3xl">Find and book a great
					experience</p>
			</div>
			<div
				class="absolute rounded-lg w-[95%] md:w-[75%] bg-white top-[230px] md:top-[400px] left-1/2 transform -translate-x-1/2
	  		py-5 px-4 shadow-2xl md:flex md:gap-5 md:items-end">
				<div class="md:flex-1">
					<div class ="md:flex md:justify-between md:items-center relative">
						<div class="flex justify-center justify-between md:w-[400px] md:mb-5">
							<div class="flex">
								<img alt="icon" src="./icons/Hotel.svg" class="mr-2">
								<p class="flex-1">Hotel</p>
							</div>
							<div
								class="flex before:block before:absolute relative before:w-full before:h-0.5 before:bg-primary before:top-[44px] before:z-10">
								<img alt="icon" src="./icons/Plane.svg" class="mr-2">
								<p class="flex-1">Flight</p>
							</div>
							<div
								class="flex before:block before:absolute relative before:w-full before:h-0.5 before:active:bg-primary before:top-[44px] before:z-10">
								<img alt="icon" src="./icons/Texi.svg" class="mr-2">
								<p class="flex-1">Car Rental</p>
							</div>
						</div>

						<div class="flex pt-10 md:pt-0 md:pb-5">
							<div class="flex mr-4">
								<p class="mr-2">Round trip</p>
								<img alt="icon" src="./icons/Vector.svg">
							</div>
							<div class="flex">
								<p class="mr-2">1 passenger</p>
								<img alt="icon" src="./icons/Vector.svg">
							</div>
						</div>
						<div class = "absolute w-full h-0.5 bg-[#E7ECF3] top-1/2 md:top-full"></div>
					</div>
					<!--  -->
					<div class="mt-4 md:flex md:gap-2" >
						<div class="px-4 py-2 bg-[#F4F5F7] rounded-lg mb-3 border md:relative">
							<p>Leaving From</p>
							<input placeholder="Where are you from?"
								class="py-2 bg-transparent">
							<img alt="logo" src="./icons/arrow.svg" class ="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">
						</div>
						<div class="px-4 py-2 bg-[#F4F5F7] rounded-lg mb-3 border md:relative">
							<p>Going to</p>
							<input placeholder="Goin to" class="py-2 bg-transparent">
							<img alt="logo" src="./icons/arrow.svg" class ="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">
						</div>
						<div class="flex gap-2 mb-3 md:flex-1">
							<div class="px-4 py-2 bg-[#F4F5F7] rounded-lg border w-1/2 md:relative">
								<p>Check in</p>
								<input placeholder="Add date" class="py-2 bg-transparent"
									type="date">
								<img alt="logo" src="./icons/arrow.svg" class ="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">
							</div>
							<div class="px-4 py-2 bg-[#F4F5F7] rounded-lg  border w-1/2 ">
								<p>Check out</p>
								<input placeholder="Add date" class="py-2 bg-transparent"
									type="date">
							</div>
						</div>
						<div class="px-4 py-2 bg-[#F4F5F7] rounded-lg mb-3 border md:hidden">
							<p>Passenger</p>
							<input placeholder="Add Guest" class="py-2 bg-transparent"
								type="text">
						</div>
					</div>
				</div>
				<button
					class="w-full py-3 text-center rounded-lg bg-primary
				 text-[#FFFFFF] text-font-bold text-xl md:w-[132px] md:h-[70px] md:mb-3">Search</button>
			</div>

		</div>
	</div>
	<jsp:include page="jsp/slider.jsp"/>
	<jsp:include page="jsp/featured_destinations.jsp"/>
	<jsp:include page="jsp/trending_cities.jsp"/>
	<jsp:include page="jsp/explore_world.jsp"/>
	<jsp:include page="jsp/offer.jsp"/>
	<jsp:include page="jsp/footer.jsp"/>
</body>
</html>