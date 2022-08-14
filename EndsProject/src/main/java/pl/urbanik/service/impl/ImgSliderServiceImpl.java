package pl.urbanik.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import pl.urbanik.model.ImgSlider;
import pl.urbanik.repository.ImgSliderRepository;
import pl.urbanik.service.ImgSliderService;

import java.io.File;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ImgSliderServiceImpl implements ImgSliderService {

    private final ImgSliderRepository imgSliderRepository;


    @Override
    public List<ImgSlider> findAllImages() {
        return imgSliderRepository.findAll();
    }

    @Override
    public void saveImage(MultipartFile file) {
        String randomFileName = usingRandomUUID() + file.getOriginalFilename();
        String formattedDate = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MMM-yy"));

        File fileLocalDate = new File("/home/myszczur/Pulpit/Projects Hibernate/EndsProject/src/main/resources/img/" + formattedDate + "/");

        if (!fileLocalDate.exists()) {
            fileLocalDate.mkdir();
        }
        try {
            file.transferTo(new File("/home/myszczur/Pulpit/Projects Hibernate/EndsProject/src/main/resources/img/" + formattedDate + "/" + randomFileName));
        } catch (Exception e) {
            ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
            return;
        }
        ImgSlider imgSlider = new ImgSlider();
        imgSlider.setImgName(randomFileName);
    }

    private String usingRandomUUID() {
        UUID randomUUID = UUID.randomUUID();
        return randomUUID.toString().replaceAll("_", "");
    }
}
