package com.example.springvaultconfigserver.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.context.annotation.Configuration;

@Configuration
public class VaultConfiguration {

    @Value("${username}")
    private String username;
    @Value("${password}")
    private String password;
    @Value("${uri}")
    private String uri;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }
}
