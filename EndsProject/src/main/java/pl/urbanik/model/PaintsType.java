package pl.urbanik.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;


@Entity
@Getter
@Setter
public class PaintsType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "{message.not.blank}")
    private String type;
    @NotBlank(message = "{message.not.blank}")
    @Size(max = 255)
    private String description;
    @Column(name = "updated_on")
    private LocalDateTime updatedOn;

    @PreUpdate
    public void preUpdate() {
        updatedOn = LocalDateTime.now();
    }
    @Column(name = "added_on")
    private LocalDateTime addedOn;

    @PrePersist
    public void prePersist() {
        addedOn = LocalDateTime.now();
    }

}
