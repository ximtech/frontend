package frontend.springboot;

import org.apache.log4j.Logger;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@ComponentScan(basePackages = {"frontend.springboot", "services"})
public class SpringBootFrontendApplication implements ApplicationRunner {
	private static final Logger LOGGER = Logger.getLogger(MainController.class);

	public static void main(String[] args) {
	    LOGGER.info("Starting frontend application");
		SpringApplication.run(SpringBootFrontendApplication.class, args);
	}

	@Override
	public void run(ApplicationArguments applicationArguments) throws Exception {}

    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }
}
