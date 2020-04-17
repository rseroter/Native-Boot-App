package com.seroter.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication(proxyBeanMethods = false)
public class NativeApp1Application {

	public static void main(String[] args) {
		SpringApplication.run(NativeApp1Application.class, args);
	}
	
	@GetMapping("/api/users")
	public String GetUses() {
		
		return "rseroter";
	}

}
