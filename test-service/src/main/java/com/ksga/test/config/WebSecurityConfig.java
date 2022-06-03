package com.ksga.test.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .cors().and()
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/api/test/unsecured")
                .permitAll()
                .antMatchers("/")
                .permitAll()
                .antMatchers("/swagger-ui.html", "/swagger-ui/index.html", "/v3/api-docs")
                .permitAll()

                .anyRequest().authenticated()

                .and()
                .oauth2ResourceServer()
                .jwt();
    }

    // @Override
    // public void configure(WebSecurity web) throws Exception {
    //     web.ignoring().antMatchers("/swagger-ui.html", "/swagger-ui/index.html", "/v3/api-docs");
    // }
}
