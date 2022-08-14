package pl.urbanik.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import pl.urbanik.service.ImgSliderService;

@Controller
@RequestMapping("/upload")
@RequiredArgsConstructor
public class ImgUploadController {

    private final ImgSliderService imgSliderService;

    @GetMapping("/uploadIMG")
    public String upload() {
        return "/upload/uploadIMG";
    }

    @PostMapping("/uploadIMG")
    public ResponseEntity<?> handleFileUpload(@RequestParam("file") MultipartFile file) {
        imgSliderService.saveImage(file);
        return ResponseEntity.ok("File uploaded successfully.");
    }
}
