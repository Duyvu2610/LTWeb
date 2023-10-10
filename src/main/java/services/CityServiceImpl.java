package services;

import java.util.List;

import dao.CityDAO;
import dao.CityDAOImpl;
import entity.City;

public class CityServiceImpl implements CityService{
	CityDAO cityDAO = new CityDAOImpl();

	@Override
	public List<City> getAllCity() {
		// TODO Auto-generated method stub
		return cityDAO.getCityList();
	}

	@Override
	public List<City> getNCity(int n) {
		// TODO Auto-generated method stub
		return cityDAO.getTopN(n);
	}
	

}
