package no.nith.pg6100;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@NamedQuery(name = "findAllMovies", query = "SELECT b FROM Movie b")
public class Movie implements Serializable {
    @Id
    @GeneratedValue
    private Long id;
    @Column(nullable = false)
    private String title;
    private Float defaultTicketPrice;
    @Column(length = 2000)
    private String description;
    private String director;
    private Integer durationInSeconds;
    private Boolean isCurrentlyRunning;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Float getDefaultTicketPrice() {
        return defaultTicketPrice;
    }

    public void setDefaultTicketPrice(Float price) {
        this.defaultTicketPrice = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String isbn) {
        this.director = isbn;
    }

    public Integer getDurationInSeconds() {
        return durationInSeconds;
    }

    public void setDurationInSeconds(Integer nbOfPage) {
        this.durationInSeconds = nbOfPage;
    }

    public Boolean getIsCurrentlyRunning() {
        return isCurrentlyRunning;
    }

    public void setIsCurrentlyRunning(Boolean illustrations) {
        this.isCurrentlyRunning = illustrations;
    }
}