package fun.docker.sample.controller;

import fun.docker.sample.domain.Hello;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Month;

@RestController
public class SampleController implements InitializingBean{

    public void afterPropertiesSet(){}

    @RequestMapping(value = "/hello", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Hello echoPolicy() {
        Hello hello = new Hello();
        hello.setName("Martian");
        hello.setLocation("Mars");
        hello.setBirthDate(LocalDate.of(1999, Month.JUNE, 28));
        hello.setNow(LocalDateTime.now());
        return hello;
    }





}
