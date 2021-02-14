package io.github.tadayosi.sample.camel.springboot.hello;

import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.util.InetAddressUtil;
import org.springframework.stereotype.Component;

@Component
public class HelloRoute extends RouteBuilder {

    @Override
    public void configure() throws Exception {
        from("timer:hello?period={{timer.period}}")
            .setBody().constant("Hello from " + InetAddressUtil.getLocalHostName())
            .log("${body}");
    }
}
