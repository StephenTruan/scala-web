package com.cc

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class Config

object SpringBootScalaApplication extends App {

  SpringApplication.run(classOf[Config])

}
