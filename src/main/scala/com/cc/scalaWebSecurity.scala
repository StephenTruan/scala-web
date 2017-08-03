package com.cc

import org.springframework.context.annotation.Configuration
import org.springframework.http.HttpMethod
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.{EnableWebSecurity, WebSecurityConfigurerAdapter}

@Configuration
@EnableWebSecurity
class scalaWebSecurity extends WebSecurityConfigurerAdapter {

  override protected def configure(auth: AuthenticationManagerBuilder): Unit = {
    auth
      .inMemoryAuthentication()
      .withUser("user").password("123456").roles("USER").and()
      .withUser("admin").password("admin").roles("ADMIN", "USER")
  }

  override protected def configure(http: HttpSecurity): Unit = {
    http
      .csrf().disable()
      .formLogin().and()
      .authorizeRequests()
      .antMatchers(HttpMethod.GET, "/user/**", "/score/**").authenticated()
      .antMatchers(HttpMethod.POST).hasRole("ADMIN")
      .anyRequest().permitAll()
      .and()
  }

}
