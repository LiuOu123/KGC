package com.kgc.controller.sunkuo;


import com.kgc.pojo.SkWeather;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import static com.kgc.box.SkWeather.WeatherReportByCity.GetTodayTemperatureByCity;
import static com.kgc.box.SkWeather2.TestWeather.getWeather;

@Controller
public class SkWeatherController {

    @RequestMapping("/getWeather")
    @ResponseBody
    public Map<String,Object> selectresult2(){
        Map<String,Object>map=new HashMap<>();
        SkWeather weather = getWeather();
        map.put("o",weather);
        return map;
    }

}
