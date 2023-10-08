<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    HttpSession sess = request.getSession();
%>
<!doctype html>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<body>
	<header class="px-5 py-6 h-[88px] fixed bg-white w-full z-[10000] top-0">
		<div
			class="flex items-center justify-between max-w-[1440px] md:mx-auto ">
			<div class="flex items-center justify-between">
				<a href="/BookTickets" class = "block flex items-center"><img alt="logo" src="./images/logo.svg"
					class="pr-2 md:w-10 md:h-9"> <span
					class="font-bold text-[#222529] md:text-xl">TripGuide</span> </a>
			</div>
			<div class="flex items-center justify-between">
				<span class="px-2 font-bold text-[#84878B] text-sm md:text-lg">USD</span>
				<img alt="language" src="./images/language.png"
					class="w-5 h-5 mr-2 md:w-6 md:h-6">

				<button id="dropdownNotificationButton"
					data-dropdown-toggle="dropdownNotification"
					class="inline-flex items-center text-sm font-medium text-center text-gray-500 hover:text-gray-900 focus:outline-none dark:hover:text-white dark:text-gray-400"
					type="button">
					<svg class="w-5 h-5" aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg" fill="currentColor"
						viewBox="0 0 14 20">
    <path
							d="M12.133 10.632v-1.8A5.406 5.406 0 0 0 7.979 3.57.946.946 0 0 0 8 3.464V1.1a1 1 0 0 0-2 0v2.364a.946.946 0 0 0 .021.106 5.406 5.406 0 0 0-4.154 5.262v1.8C1.867 13.018 0 13.614 0 14.807 0 15.4 0 16 .538 16h12.924C14 16 14 15.4 14 14.807c0-1.193-1.867-1.789-1.867-4.175ZM3.823 17a3.453 3.453 0 0 0 6.354 0H3.823Z" />
  </svg>
					<div class="relative flex">
						<div
							class="relative inline-flex w-3 h-3 bg-red-500 border-2 border-white rounded-full -top-2 right-3 dark:border-gray-900"></div>
					</div>
				</button>
				<!-- Dropdown menu -->
				<div id="dropdownNotification"
					class="z-20 hidden w-full max-w-xs bg-white divide-y divide-gray-100 rounded-lg shadow"
					aria-labelledby="dropdownNotificationButton">
					<div
						class="block px-4 py-2 font-medium text-center text-gray-700 rounded-t-lg bg-gray-50">
						Notifications</div>
					<div class="divide-y divide-gray-100">
						<a href="#" class="flex px-4 py-3 hover:bg-gray-100">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Jese image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-blue-600 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 18 18">
            <path
											d="M1 18h16a1 1 0 0 0 1-1v-6h-4.439a.99.99 0 0 0-.908.6 3.978 3.978 0 0 1-7.306 0 .99.99 0 0 0-.908-.6H0v6a1 1 0 0 0 1 1Z" />
            <path
											d="M4.439 9a2.99 2.99 0 0 1 2.742 1.8 1.977 1.977 0 0 0 3.638 0A2.99 2.99 0 0 1 13.561 9H17.8L15.977.783A1 1 0 0 0 15 0H3a1 1 0 0 0-.977.783L.2 9h4.239Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									New message from <span
										class="font-semibold text-gray-900 dark:text-white">Jese
										Leos</span>: "Hey, what's up? All set for the presentation?"
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">a
									few moments ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Joseph image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-gray-900 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 18">
            <path
											d="M6.5 9a4.5 4.5 0 1 0 0-9 4.5 4.5 0 0 0 0 9ZM8 10H5a5.006 5.006 0 0 0-5 5v2a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-2a5.006 5.006 0 0 0-5-5Zm11-3h-2V5a1 1 0 0 0-2 0v2h-2a1 1 0 1 0 0 2h2v2a1 1 0 0 0 2 0V9h2a1 1 0 1 0 0-2Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Joseph
										Mcfall</span> and <span
										class="font-medium text-gray-900 dark:text-white">5
										others</span> started following you.
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">10
									minutes ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Bonnie image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-red-600 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 18">
            <path
											d="M17.947 2.053a5.209 5.209 0 0 0-3.793-1.53A6.414 6.414 0 0 0 10 2.311 6.482 6.482 0 0 0 5.824.5a5.2 5.2 0 0 0-3.8 1.521c-1.915 1.916-2.315 5.392.625 8.333l7 7a.5.5 0 0 0 .708 0l7-7a6.6 6.6 0 0 0 2.123-4.508 5.179 5.179 0 0 0-1.533-3.793Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Bonnie
										Green</span> and <span
										class="font-medium text-gray-900 dark:text-white">141
										others</span> love your story. See it and view more stories.
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">44
									minutes ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Leslie image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-green-400 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 18">
            <path
											d="M18 0H2a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h2v4a1 1 0 0 0 1.707.707L10.414 13H18a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2Zm-5 4h2a1 1 0 1 1 0 2h-2a1 1 0 1 1 0-2ZM5 4h5a1 1 0 1 1 0 2H5a1 1 0 0 1 0-2Zm2 5H5a1 1 0 0 1 0-2h2a1 1 0 0 1 0 2Zm9 0h-6a1 1 0 0 1 0-2h6a1 1 0 1 1 0 2Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Leslie
										Livingston</span> mentioned you in a comment: <span
										class="font-medium text-blue-500" href="#">@bonnie.green</span>
									what do you say?
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">1
									hour ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Robert image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-purple-500 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 14">
            <path
											d="M11 0H2a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h9a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2Zm8.585 1.189a.994.994 0 0 0-.9-.138l-2.965.983a1 1 0 0 0-.685.949v8a1 1 0 0 0 .675.946l2.965 1.02a1.013 1.013 0 0 0 1.032-.242A1 1 0 0 0 20 12V2a1 1 0 0 0-.415-.811Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Robert
										Brown</span> posted a new video: Glassmorphism - learn how to
									implement the new design trend.
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">3
									hours ago</div>
							</div>
						</a>
					</div>
					<a href="#"
						class="block py-2 text-sm font-medium text-center text-gray-900 rounded-b-lg bg-gray-50 hover:bg-gray-100 dark:bg-gray-800 dark:hover:bg-gray-700 dark:text-white">
						<div class="inline-flex items-center ">
							<svg class="w-4 h-4 mr-2 text-gray-500 dark:text-gray-400"
								aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
								fill="currentColor" viewBox="0 0 20 14">
        <path
									d="M10 0C4.612 0 0 5.336 0 7c0 1.742 3.546 7 10 7 6.454 0 10-5.258 10-7 0-1.664-4.612-7-10-7Zm0 10a3 3 0 1 1 0-6 3 3 0 0 1 0 6Z" />
      </svg>
							View all
						</div>
					</a>
				</div>

				<div class="w-px h-[25px] bg-slate-500 mx-3"></div>
				<div class="relative flex">
					<c:choose>
						<c:when test="${not empty sessionScope.username}">
							<img alt="user-image" src="./images/profile.svg"
								class="md:w-8 md:h-8 md:mr-2 user">
							<img alt="dropdown" src="./icons/dropdown.svg" id="dropdown"
								class="transition-all duration-500 hidden md:block user">
							<ul
								class="absolute w-[240px]  top-[40px] right-0 rounded-lg py-4 px-2
					 border shadow-2xl transition-all duration-500 bg-white my_hidden"
								id="user_drop_down">
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md "><a
									href="#" class="flex flex-1"> <img alt="profile"
										src="./icons/profile.svg" class=" mr-5"> <span
										class="flex-1">My Profile</span>
								</a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1"><img alt="profile"
										src="./icons/user.svg" class=" mr-5"> <span
										class="flex-1">Manage account</span></a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1"><img alt="profile"
										src="./icons/booking.svg" class=" mr-5"> <span
										class="flex-1">Bookings</span></a></li>
								<li class=" flex  hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1"><img alt="profile"
										src="./icons/wallet.svg" class=" mr-5"> <span
										class="flex-1">My wallate</span></a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1"><img alt="profile"
										src="./icons/reward.svg" class=" mr-5"> <span
										class="flex-1">My Rewards</span></a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="logout" class="flex flex-1"> <img alt="profile"
										src="./icons/logout.svg" class=" mr-5"> <span
										class="flex-1">Sign out</span></a></li>
							</ul>
						</c:when>
						<c:otherwise>
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								viewBox="0 0 32 32" fill="none"
								class="md:w-8 md:h-8 md:mr-2 user">
<rect width="32" height="32" rx="16" fill="#E7ECF3" />
<path
									d="M18.9707 16.5675C19.7589 15.9507 20.3342 15.105 20.6166 14.148C20.899 13.191 20.8744 12.1702 20.5463 11.2277C20.2182 10.2852 19.6028 9.46786 18.7859 8.88937C17.9689 8.31087 16.991 8 15.9881 8C14.9852 8 14.0072 8.31087 13.1903 8.88937C12.3733 9.46786 11.758 10.2852 11.4298 11.2277C11.1017 12.1702 11.0772 13.191 11.3595 14.148C11.6419 15.105 12.2172 15.9507 13.0054 16.5675C11.6548 17.1056 10.4764 17.9981 9.59578 19.1499C8.71514 20.3017 8.16529 21.6696 8.00485 23.1077C7.99324 23.2127 8.00253 23.3189 8.0322 23.4204C8.06188 23.5218 8.11135 23.6164 8.17779 23.6988C8.31197 23.8652 8.50714 23.9718 8.72037 23.9952C8.93359 24.0185 9.14739 23.9566 9.31475 23.8232C9.4821 23.6897 9.5893 23.4956 9.61275 23.2836C9.78929 21.7206 10.5386 20.2772 11.7177 19.229C12.8967 18.1807 14.4227 17.6013 16.0042 17.6013C17.5856 17.6013 19.1116 18.1807 20.2906 19.229C21.4697 20.2772 22.219 21.7206 22.3956 23.2836C22.4174 23.48 22.5117 23.6615 22.6601 23.7929C22.8086 23.9243 23.0008 23.9964 23.1995 23.9952H23.2879C23.4987 23.9711 23.6913 23.8651 23.8238 23.7003C23.9563 23.5356 24.018 23.3254 23.9954 23.1157C23.8342 21.6735 23.2814 20.3021 22.3962 19.1485C21.5111 17.995 20.3269 17.1027 18.9707 16.5675ZM15.9881 15.9998C15.3521 15.9998 14.7303 15.8122 14.2015 15.4608C13.6726 15.1094 13.2605 14.6099 13.0171 14.0255C12.7737 13.4411 12.71 12.7981 12.8341 12.1777C12.9581 11.5573 13.2644 10.9875 13.7142 10.5402C14.1639 10.0929 14.7369 9.78833 15.3607 9.66492C15.9845 9.54152 16.6311 9.60486 17.2187 9.84692C17.8063 10.089 18.3086 10.4989 18.6619 11.0248C19.0153 11.5508 19.2039 12.1691 19.2039 12.8016C19.2039 13.6498 18.8651 14.4633 18.262 15.0631C17.6589 15.6628 16.841 15.9998 15.9881 15.9998Z"
									fill="#B1B5C4" />
								
</svg>
							<img alt="dropdown" src="./icons/dropdown.svg" id="dropdown"
								class="transition-all duration-500 hidden md:block user">
							<ul
								class="absolute w-[240px] top-[40px] right-0 rounded-lg py-4 px-2
					 border shadow-2xl transition-all duration-500 bg-white my_hidden"
								id="user_drop_down">
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md "><a
									href="login" class="flex flex-1"> <img alt="profile"
										src="./icons/profile.svg" class=" mr-5"> <span
										class="flex-1">Login</span>
								</a></li>

							</ul>
						</c:otherwise>
					</c:choose>




				</div>
			</div>
		</div>
	</header>
	<script src="./js/header.js"></script>
</body>
</html>