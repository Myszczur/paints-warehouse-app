package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import pl.urbanik.model.ImgSlider;
import pl.urbanik.repository.ImgSliderRepository;

import java.io.File;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

@Controller
@RequestMapping("/upload")
@RequiredArgsConstructor
public class ImgUploadController {

    private final ImgSliderRepository imgSliderRepository;

    @GetMapping("/uploadIMG")
    public String upload() {
        return "/upload/uploadIMG";
    }

    @PostMapping("/uploadIMG")
    public ResponseEntity<?> handleFileUpload(@RequestParam("file") MultipartFile file) {

        String randomFileName = usingRandomUUID() + file.getOriginalFilename();
        String formattedDate = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MMM-yy"));

        File fileLocalDate = new File("/home/myszczur/Pulpit/Projects Hibernate/EndsProject/src/main/resources/img/" + formattedDate + "/");

        if (!fileLocalDate.exists()) {
            fileLocalDate.mkdir();
        }
        try {
            file.transferTo(new File("/home/myszczur/Pulpit/Projects Hibernate/EndsProject/src/main/resources/img/" + formattedDate + "/" + randomFileName));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
        ImgSlider imgSlider = new ImgSlider();
        imgSlider.setImgName(randomFileName);
        imgSliderRepository.save(imgSlider);
        return ResponseEntity.ok("File uploaded successfully.");
    }

    private String usingRandomUUID() {
        UUID randomUUID = UUID.randomUUID();
        return randomUUID.toString().replaceAll("_", "");
    }
}
