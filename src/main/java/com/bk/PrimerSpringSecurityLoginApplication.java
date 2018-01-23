package com.bk;

/**
 * @author Milan Karajovic azdajaazdaja@gmail.com
 */

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = "com.bk")
@SpringBootApplication
public class PrimerSpringSecurityLoginApplication {

	public static void main(String[] args) {
		SpringApplication.run(PrimerSpringSecurityLoginApplication.class, args);
	}
}
