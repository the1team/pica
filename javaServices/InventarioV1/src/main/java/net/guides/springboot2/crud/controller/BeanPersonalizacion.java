package net.guides.springboot2.crud.controller;

import org.springframework.boot.web.server.ConfigurableWebServerFactory;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.stereotype.Component;

@Component
public class BeanPersonalizacion implements WebServerFactoryCustomizer<ConfigurableWebServerFactory>
{

    @Override
    public void customize(ConfigurableWebServerFactory factory) {
        factory.setPort(5008);
    }

}