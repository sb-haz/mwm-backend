package com.myweddingmoments.app.marketplace.vendor;

import com.myweddingmoments.app.marketplace.offering.Offering;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "vendor")
public class Vendor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @NotEmpty
    private String owner;

    @NotEmpty
    @Email
    @NotBlank
    private String email;

    @DecimalMin(value = "0.0")
    @DecimalMax(value = "5.0")
    private double rating;

    private List<String> locationsCovered;

    @OneToMany(mappedBy = "vendor", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Offering> offerings = new ArrayList<>();

    public Vendor() {}

    public Vendor(Long id, String name, String owner, String email, double rating, List<String> locationsCovered, List<Offering> offerings) {
        this.id = id;
        this.name = name;
        this.owner = owner;
        this.email = email;
        this.rating = rating;
        this.locationsCovered = locationsCovered;
        this.offerings = offerings;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getOwner() {
        return owner;
    }
    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public double getRating() {
        return rating;
    }
    public void setRating(double rating) {
        this.rating = rating;
    }

    public List<String> getLocationsCovered() {
        return locationsCovered;
    }
    public void setLocationsCovered(List<String> locationsCovered) {
        this.locationsCovered = locationsCovered;
    }

    public List<Offering> getOfferings() {
        return offerings;
    }
    public void setOfferings(List<Offering> offerings) {
        this.offerings = offerings;
    }

}
