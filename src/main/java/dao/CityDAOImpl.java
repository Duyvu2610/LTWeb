package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import database.DBConnection;
import entity.City;

public class CityDAOImpl extends DBConnection implements CityDAO {

    @Override
    public List<City> getCityList() {
        List<City> cityList = new ArrayList<>();
        String query = "SELECT * FROM City"; // Thay thế City bằng tên bảng chứa thông tin về thành phố

        try {
            Connection cn = super.getConnection();
            PreparedStatement ps = cn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id_city"); // Thay "id" bằng tên cột trong bảng chứa ID của thành phố
                String cityName = rs.getString("city_name"); // Thay "city_name" bằng tên cột trong bảng chứa tên thành phố
                String imgPath = rs.getString("image_path");
                String country = rs.getString("country");
                int destinationNum = rs.getInt("destination_num");
                double price = rs.getDouble("price");
                String descriptionCity = rs.getString("description_city");
                int avaibleRoom = rs.getInt("avaible_room");
                double rate = rs.getDouble("rate");
                // Tạo đối tượng City từ dữ liệu trong ResultSet và thêm vào danh sách
                City city = new City(id,imgPath, cityName, country, destinationNum, price, descriptionCity, avaibleRoom, rate);
                cityList.add(city);
            }
          
            // Đóng kết nối
            rs.close();
            ps.close();
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return cityList;
    }

	@Override
	public List<City> getTopN(int n) {
		List<City> cityList = new ArrayList<>();
        String query = "SELECT TOP " + n + " * FROM City"; // Thay thế City bằng tên bảng chứa thông tin về thành phố
        try {
            Connection cn = super.getConnection();
            PreparedStatement ps = cn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id_city"); // Thay "id" bằng tên cột trong bảng chứa ID của thành phố
                String cityName = rs.getString("city_name"); // Thay "city_name" bằng tên cột trong bảng chứa tên thành phố
                String imgPath = rs.getString("image_path");
                String country = rs.getString("country");
                int destinationNum = rs.getInt("destination_num");
                double price = rs.getDouble("price");
                String descriptionCity = rs.getString("description_city");
                int avaibleRoom = rs.getInt("avaible_room");
                double rate = rs.getDouble("rate");
                // Tạo đối tượng City từ dữ liệu trong ResultSet và thêm vào danh sách
                City city = new City(id,imgPath, cityName, country, destinationNum, price, descriptionCity, avaibleRoom, rate);
                cityList.add(city);
            }
          
            // Đóng kết nối
            rs.close();
            ps.close();
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return cityList;
	}


}
