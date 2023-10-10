package dao;

import java.util.List;

import entity.City;

public interface CityDAO {
	List<City> getCityList();
	List<City> getTopN(int n);
}
