package pl.urbanik.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@ToString
public class PzPaint {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @ManyToMany
    private List<PaintsType> paintsType = new ArrayList<>();
    @ManyToOne
    private Destination destination;
    //TODO: Sprzawdzanie dczy podany ciąg jest liczbą
    @NotNull(message = "{message.not.null}")
    private Long quantity;
    private String description;
    private String ingredients;

    public PzPaint(Paints paints) {
        this.name = paints.getName();
        this.destination = paints.getDestination();
        this.quantity = paints.getQuantity();
        this.description = paints.getDescription();
        this.ingredients = paints.getIngredients();
    }

    public PzPaint() {
    }

    @Column(name = "income_on")
    private LocalDateTime incomeOn;

    @PrePersist
    public void preUpdate() {
        incomeOn = LocalDateTime.now();
    }

}
