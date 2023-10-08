<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/datepicker.min.js"></script>
<form
	class="absolute rounded-lg w-[85%] md:w-[75%] bg-white top-[230px] md:top-[400px] left-1/2 transform -translate-x-1/2
	  		py-5 px-4 border shadow md:flex md:gap-5 md:items-end z-50"
	method="post" action="flight-list">
	<div class="md:flex-1">
		<div class="md:flex md:justify-between md:items-center relative">
			<div class="flex justify-center justify-between md:w-[400px] md:mb-5">
				<div class="flex">
					<img alt="icon" src="./icons/Hotel.svg" class="mr-2">
					<p class="flex-1">Hotel</p>
				</div>
				<div
					class="flex before:block before:absolute relative before:w-full before:h-0.5 before:bg-[#316BFF] before:top-[44px] before:z-10">
					<img alt="icon" src="./icons/Plane.svg" class="mr-2">
					<p class="flex-1">Flight</p>
				</div>
				<div
					class="flex before:block before:absolute relative before:w-full before:h-0.5 before:active:bg-[#316BFF] before:top-[44px] before:z-10">
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
			<div class="absolute w-full h-0.5 bg-[#E7ECF3] top-1/2 md:top-full"></div>
		</div>
		<!--  -->
		<div class="mt-4 md:flex md:gap-2">
			<div class="flex flex-col md:flex-row gap-2 md:flex-1">
				<div
					class="bg-[#F4F5F7] rounded-lg md:relative px-5 py-2 md:w-[60%] flex flex-col gap-2">
					<!-- Dropdown menu -->
					<p class="font-medium">Leaving from</p>
					<select data-te-select-init data-te-select-filter="true"
						id="leaving" name="leaving">
						<option value="" hidden selected></option>
						<option>One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
						<option value="4">Four</option>
						<option value="5">Five</option>
						<option value="6">Six</option>
						<option value="7">Seven</option>
						<option value="8">Eight</option>
						<option value="9">Nine</option>
						<option value="10">Ten</option>
					</select> <img alt="logo" src="./icons/arrow.svg"
						class="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">

				</div>
				<div
					class="bg-[#F4F5F7] rounded-lg md:relative px-5 py-2 md:w-[40%] flex flex-col gap-2">
					<!-- Dropdown menu -->
					<p class="font-medium">Leaving from</p>
					<select data-te-select-init data-te-select-filter="true"
						name="gointo">
						<option value="" hidden selected></option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
						<option value="4">Four</option>
						<option value="5">Five</option>
						<option value="6">Six</option>
						<option value="7">Seven</option>
						<option value="8">Eight</option>
						<option value="9">Nine</option>
						<option value="10">Ten</option>
					</select> <img alt="logo" src="./icons/arrow.svg"
						class="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">

				</div>

			</div>
			<div class="grid grid-cols-2 mb-3 gap-2 md:mb-0">
				<div class="relative rounded-lg border px-5 py-2 bg-[#F4F5F7]">
					<p class="font-medium">Check in</p>

					<input datepicker datepicker-autohide
						datepicker-format="dd/mm/yyyy" type="text"
						class="text-sm rounded-lg block w-full bg-[#F4F5F7] px-0 focus:border-black border-0 focus:border-0"
						placeholder="Add date" name="checkin"> <img alt="logo"
						src="./icons/arrow.svg"
						class="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">

				</div>

				<div class="relative rounded-lg border px-5 py-2 bg-[#F4F5F7]">
					<p class="font-medium">Check out</p>

					<input datepicker datepicker-autohide
						datepicker-format="dd/mm/yyyy" type="text"
						class="text-sm rounded-lg block w-full bg-[#F4F5F7] px-0 focus:border-black border-0 focus:border-0"
						placeholder="Add date" name="checkout">

				</div>
			</div>
			<div class="px-4 py-2 bg-[#F4F5F7] rounded-lg mb-3 border md:hidden">
				<p>Passenger</p>

			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${not empty sessionScope.username}">
			<button
				class="w-full py-3 text-center rounded-lg bg-[#316BFF]
				 text-[#FFFFFF] text-font-bold text-xl md:w-[132px] md:mb-0 block"
				type="submit">Search</button>
		</c:when>
		<c:otherwise>
			<button data-tooltip-target="tooltip-no-arrow" type="button"
				class="w-full py-3 text-center rounded-lg bg-blue-400
				 text-[#FFFFFF] text-font-bold text-xl md:w-[132px] md:mb-0 block cursor-not-allowed"
				disabled>Search</button>
			<div id="tooltip-no-arrow" role="tooltip"
				class="absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700">
				Please signin to search!</div>
		</c:otherwise>
	</c:choose>

</form>

<script
	src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>
<script src="./js/search-bar.js"></script>