<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="./css/header.css">
<title>Bootstrap demo</title>
<body>
	<header
		class="px-5 py-6 h-[88px] fixed bg-white w-full z-10">
		<div class="flex items-center justify-between max-w-[1440px] md:mx-auto ">
			<div class="flex items-center justify-between">
				<a href="#"><img alt="logo" src="./images/logo.svg"
					class="pr-2 md:w-10 md:h-9"></a> <span
					class="font-bold text-[#222529] md:text-xl">TripGuide</span>
			</div>
			<div class="flex items-center justify-between">
				<span class="px-2 font-bold text-[#84878B] text-sm md:text-lg">USD</span>
				<img alt="language" src="./images/language.png"
					class="w-5 h-5 mr-2 md:w-6 md:h-6"> <img alt="icon"
					src="./icons/bell.svg" class="md:w-8 md:h-8">
				<div class="w-px h-[25px] bg-slate-500 mx-3"></div>
				<div class="relative flex">
					<img alt="user-image" src="./images/profile.svg"
						class="md:w-8 md:h-8 md:mr-2 user"> <img alt="dropdown"
						src="./icons/dropdown.svg" id="dropdown"
						class="transition-all duration-500 hidden md:block user">
					<ul
						class="absolute w-[240px] h-[279px] top-[40px] right-0 rounded-lg py-4 px-2
					 border shadow-2xl transition-all duration-500 bg-white my_hidden"
						id="user_drop_down">
						<li class=" flex hover:bg-hover py-2 px-4 rounded-md "><a
							href="#" class="flex flex-1"> <img alt="profile"
								src="./icons/profile.svg" class=" mr-5"> <span
								class="flex-1">My Profile</span>
						</a></li>
						<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
							href="#" class="flex flex-1"><img alt="profile"
								src="./icons/user.svg" class=" mr-5"> <span class="flex-1">Manage
									account</span></a></li>
						<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
							href="#" class="flex flex-1"><img alt="profile"
							src="./icons/booking.svg" class=" mr-5"> <span
							class="flex-1">Bookings</span></a> </li>
						<li class=" flex  hover:bg-hover py-2 px-4 rounded-md"><a
							href="#" class="flex flex-1"><img alt="profile"
							src="./icons/wallet.svg" class=" mr-5"> <span
							class="flex-1">My wallate</span></a> </li>
						<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
							href="#" class="flex flex-1"><img alt="profile"
							src="./icons/reward.svg" class=" mr-5"> <span
							class="flex-1">My Rewards</span></a> </li>
						<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
							href="#" class="flex flex-1">
							<img alt="profile"
							src="./icons/logout.svg" class=" mr-5"> <span
							class="flex-1">Sign out</span></a> </li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<script src="./js/header.js"></script>
</body>
</html>