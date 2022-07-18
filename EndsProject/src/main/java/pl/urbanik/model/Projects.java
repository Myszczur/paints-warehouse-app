package pl.urbanik.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@Entity
@Getter
@Setter
@ToString
public class Projects {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "{message.not.blank}")
    private String nameOfProject;
    @NotBlank(message = "{message.not.blank}")
    private String description;
    @NotBlank(message = "{message.not.blank}")
    private String address;
    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;
    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endsDate;

    @Column(name = "updated_on")
    private LocalDateTime updatedOn;

    @PreUpdate
    public void preUpdate() {
        updatedOn = LocalDateTime.now();
    }

}
