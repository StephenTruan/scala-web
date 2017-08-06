package com.cc

import org.apache.tomcat.jdbc.pool.DataSource
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Configuration
import org.springframework.http.HttpMethod
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.{EnableWebSecurity, WebSecurityConfigurerAdapter}

@Configuration
@EnableWebSecurity
class scalaWebSecurity extends WebSecurityConfigurerAdapter {

  @Autowired val dataSource: DataSource = null

  override protected def configure(auth: AuthenticationManagerBuilder): Unit = {
    auth
      .jdbcAuthentication().dataSource(dataSource)
      .usersByUsernameQuery(
        "SELECT AVATAR, PASSWORD, STATE FROM TBL_USER WHERE AVATAR =?"
      )
      .authoritiesByUsernameQuery(
        "SELECT u.AVATAR, r.ROLE_NAME FROM TBL_USER_ROLE ur LEFT JOIN TBL_USER u ON u.UUID = ur.USER_UUID RIGHT JOIN TBL_ROLE r ON r.UUID = ur.ROLE_UUID WHERE AVATAR = ?"
      )
  }

  override protected def configure(http: HttpSecurity): Unit = {
    http
      .csrf().disable() //禁用CSRF token
      .formLogin() //添加默认登录界面
      .and()
      .httpBasic() //启用HTTP Basic认证
      .and()
      .rememberMe()
      .tokenValiditySeconds(2419200).key("myKey") //将token存储在cookie中(登录请求必须包含一个名为remember_me的参数)
      .and()
      .authorizeRequests()
      .antMatchers(HttpMethod.GET, "/user/list").authenticated()
      .antMatchers(HttpMethod.GET, "/score/list").hasAnyAuthority("ROLE_USER")
      .antMatchers(HttpMethod.GET, "/user/find/**").hasAuthority("ROLE_VIP")
      .antMatchers(HttpMethod.POST).hasRole("ADMIN")
      .anyRequest().permitAll()
  }

}
