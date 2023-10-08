<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pt-[88px]">
	<div class="bg-right h-[560px] w-full relative md:bg-cover"
		style="background-image: url(./images/airplane-background.svg); background-repeat: no-repeat;">
		<div
			class="w-full h-full bg-gradient-to-br from-[#106CD9D1] to-[#5B8FC151] absolute"></div>
		<div
			class="pt-[42px] md:pt-[100px] md:pl-[133px] pl-[33px] text-[#FCFCFD] font-bold absolute ">
			<p class="text-4xl md:text-6xl underline underline-offset-3 decoration-8 decoration-gray-400 mb-3">
				Amazing Flight
			</p>
			<p class = "text-4xl md:text-6xl">To Switzerland</p>
			<p class="text-lg pt-3 md:pt-6 md:text-3xl">Find and book a great
				experience</p>
		</div>
		<jsp:include page="search-bar.jsp" />

	</div>
</div>