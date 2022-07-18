package pl.urbanik.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@ToString
public class WzPaint {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @ManyToOne
    private PaintsType paintsType;
    @ManyToOne
    private Destination destination;
    @NotNull(message = "{message.not.null}")
    private Long quantity;
    private String description;
    private String ingredients;
    @ManyToOne
    private Projects projects;

    @Column(name = "release_on")
    private LocalDateTime releaseOn;

    @PrePersist
    public void prePersist() {
        releaseOn = LocalDateTime.now();
    }

    public WzPaint(Paints paints) {
        this.name = paints.getName();
        this.destination = paints.getDestination();
        this.quantity = paints.getQuantity();
        this.description = paints.getDescription();
        this.ingredients = paints.getIngredients();
    }

    public WzPaint() {
    }
}
