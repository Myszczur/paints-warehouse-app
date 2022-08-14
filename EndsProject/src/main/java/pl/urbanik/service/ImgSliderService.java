package pl.urbanik.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import pl.urbanik.model.ImgSlider;

import java.util.List;

@Service
public interface ImgSliderService {
    List<ImgSlider> findAllImages();

    void saveImage(MultipartFile file);
}
