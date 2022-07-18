package pl.urbanik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.urbanik.model.ImgSlider;

@Repository
public interface ImgSliderRepository extends JpaRepository<ImgSlider, Long> {
}
