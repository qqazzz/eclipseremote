package com.aaa.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
<<<<<<< HEAD
//hello test 
=======
//qqazzz
>>>>>>> branch 'master' of https://github.com/qqazzz/eclipseremote.git
@SpringBootApplication
@MapperScan("com.aaa")
public class SchoolApplication {
		//hello
	public static void main(String[] args) {
		SpringApplication.run(SchoolApplication.class, args);
	}
	
}
