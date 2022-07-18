package pl.urbanik;


import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import org.springframework.context.annotation.Bean;

import pl.urbanik.model.Destination;
import pl.urbanik.model.PaintsType;
import pl.urbanik.model.Projects;
import pl.urbanik.storage.StorageProperties;
import pl.urbanik.storage.StorageService;


@SpringBootApplication
@EnableConfigurationProperties(StorageProperties.class)
public class EndsProjectApplication {

    @Bean
    public PaintsType getPaintsType() {
        return new PaintsType();
    }

    @Bean
    public Destination getDestination() {
        return new Destination();
    }
    @Bean
    public Projects getProjects() {
        return new Projects();
    }



    @Bean
    CommandLineRunner init(StorageService storageService) {
        return (args) -> {
            storageService.deleteAll();
            storageService.init();
        };
    }

    public static void main(String[] args) {
        SpringApplication.run(EndsProjectApplication.class, args);

    }
}
