package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TemperatureConverterController {
	@GetMapping("/")
	public String homePage() {
		return "index";
	}

    @PostMapping("/get-value")
    public String convertTemperature(
            @RequestParam("fromUnit") String fromUnit,
            @RequestParam("temperature") double temperature,
            Model model) {
        
        double celsius = 0.0;
        double kelvin = 0.0;
        double fahrenheit = 0.0;

        switch (fromUnit) {
            case "Celsius":
                celsius = temperature;
                kelvin = temperature + 273.15;
                fahrenheit = (temperature * 9/5) + 32;
                break;
            case "Kelvin":
                celsius = temperature - 273.15;
                kelvin = temperature;
                fahrenheit = ((temperature - 273.15) * 9/5) + 32;
                break;
            case "Fahrenheit":
                celsius = (temperature - 32) * 5/9;
                kelvin = ((temperature - 32) * 5/9) + 273.15;
                fahrenheit = temperature;
                break;
        }

        model.addAttribute("celsius", celsius);
        model.addAttribute("kelvin", kelvin);
        model.addAttribute("fahrenheit", fahrenheit);

        return "index";
    }
}
