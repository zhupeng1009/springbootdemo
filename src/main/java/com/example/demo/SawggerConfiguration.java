package com.example.demo;/**
 * Created by zhupeng01 on 2019/10/23.
 */

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author zhupeng
 * swagger api文档
 * @date 2019-10-23 14:40
 */
@Configuration
@EnableSwagger2
public class SawggerConfiguration {
    @Bean
    public Docket buildDocket(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(buildApiInf())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.example.demo"))
                .paths(PathSelectors.any())
                .build();
    }

    /**
     * 初始化页面一些信息
     * @return
     */
    private ApiInfo buildApiInf(){
        return new ApiInfoBuilder()
                .title("springbootdemo swagger")
                .description("springboot swagger2")
                .build();
    }
}
