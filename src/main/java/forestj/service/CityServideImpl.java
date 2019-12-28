package forestj.service;

import forestj.mapper.CityMapper;
import forestj.pojo.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityServideImpl implements CityService{
    @Autowired
    private CityMapper cityMapper;

    @Override
    public List<City> getAllCities() {
        return cityMapper.getAllCities();
    }
}
