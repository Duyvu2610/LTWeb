package services;

import java.util.List;

import entity.City;

public interface CityService {
	List<City> getAllCity();
	List<City> getNCity(int n);
}
