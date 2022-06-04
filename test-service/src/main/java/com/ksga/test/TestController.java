package com.ksga.test;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/api/test/secured")
    public ResponseEntity<String> getSecuredRoute(
        @AuthenticationPrincipal Jwt principal
    ) {
        System.out.println(principal);
        return ResponseEntity.ok("This is a secured route");
    }

    @GetMapping("/api/test/unsecured")
    public ResponseEntity<String> getUnsecuredRoute() {
        return ResponseEntity.ok("This is an unsecured route");
    }

    @GetMapping("/")
    public ResponseEntity<String> test() {
        return ResponseEntity.ok("This shit's working");
    }

}
