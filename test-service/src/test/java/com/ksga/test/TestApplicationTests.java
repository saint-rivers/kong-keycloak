package com.ksga.test;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class TestApplicationTests {
    @Test
    public void givenUserWithReadScope_whenGetFooResource_thenSuccess() {
        // String accessToken = obtainAccessToken("read");

        // Response response = RestAssured.given()
        //         .header(HttpHeaders.AUTHORIZATION, "Bearer " + accessToken)
        //         .get("http://localhost:8081/resource-server-jwt/foos");
        // assertThat(response.as(List.class)).hasSizeGreaterThan(0);
    }
}
