package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * srpingboot 入口
 */
@SpringBootApplication
@MapperScan(value = "com.example.demo.*.dao")
public class SpringbootDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootDemoApplication.class, args);
		System.out.println("*****************************");
		System.out.println("*****************************");
		System.out.println("************启动成功**********");
		System.out.println("*****************************");
		System.out.println("*****************************");
	}

}
