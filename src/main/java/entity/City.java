package entity;

public record City(
		int id,
		String imagePath,
		String cityName,
		String country,
		int destinationNum,
		double price,
		String description,
		int roomAvaible,
		double rating
		) {

}
