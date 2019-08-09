package com.salaboy.conferences.site;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }


}

@Controller
class ConferenceSiteController {
    @Value("${version:0}")
    private String version;

    @GetMapping("/")
    public String index(Model model) {

        RestTemplate restTemplate = new RestTemplate();
        String conferenceAgenda = "http://conference-agenda";
        String conferenceSponsors = "http://conference-sponsors";
        String agendaString = "N/A";
        String sponsorsString = "N/A";
        try {
            ResponseEntity<String> agenda = restTemplate.getForEntity(conferenceAgenda, String.class);
            agendaString = agenda.getBody();

        } catch (Exception e) {
        }
        try {
            ResponseEntity<String> sponsors = restTemplate.getForEntity(conferenceSponsors, String.class);
            sponsorsString = sponsors.getBody();
        } catch (Exception e) {
        }

        model.addAttribute("version", version);
        model.addAttribute("agenda", agendaString);
        model.addAttribute("sponsors", sponsorsString);
        return "index";
    }

}
