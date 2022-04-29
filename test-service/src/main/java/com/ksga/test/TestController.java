package com.ksga.test;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/api/test/secured")
    public ResponseEntity<String> getSecuredRoute(){
        return ResponseEntity.ok("This is a secured route");
    }

    @GetMapping("/api/test/unsecured")
    public ResponseEntity<String> getUnsecuredRoute(){
        return ResponseEntity.ok("This is an unsecured route");
    }
}
