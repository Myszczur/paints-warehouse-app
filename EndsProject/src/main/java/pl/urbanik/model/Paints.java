package pl.urbanik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
public class Paints {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "{message.not.blank}")
    @Size(max = 50, message = "{message.max.size}")
    private String name;
    @NotEmpty(message = "{message.not.empty}")
    @ManyToMany
    private List<PaintsType> paintsType = new ArrayList<>();
    @ManyToOne
    private Destination destination;
    @NotNull(message = "{message.not.null}")
    private Long quantity;
    @NotBlank(message = "{message.not.blank}")
    private String description;
    @NotBlank(message = "{message.not.blank}")
    private String ingredients;
    @Column(name = "added_on")
    private LocalDateTime added;

    @PrePersist
    public void prePersist() {
        added = LocalDateTime.now();
    }

    @Column(name = "updated_on")
    private LocalDateTime updatedOn;

    @PreUpdate
    public void preUpdate() {
        updatedOn = LocalDateTime.now();
    }

}
