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
                .antMatchers("/api/test/unsecured").permitAll()

                .anyRequest().authenticated()

                .and()
                .oauth2ResourceServer()
                .jwt();

        // http
        // .authorizeRequests(auth -> auth.antMatchers("/api/test/unsecured")
        // .hasAuthority("SCOPE_read")
        // .anyRequest().authenticated())
        // .oauth2ResourceServer(oauth2 -> oauth2.jwt());
    }
}
