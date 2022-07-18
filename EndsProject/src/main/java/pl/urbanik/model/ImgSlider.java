package pl.urbanik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
public class ImgSlider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String imgName;

    @Column(name = "added_on")
    private LocalDateTime added;

    @PrePersist
    public void prePersist() {
        added = LocalDateTime.now();
    }
}
