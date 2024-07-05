package com.myweddingmoments.app.marketplace.offering;

import com.myweddingmoments.app.marketplace.vendor.Vendor;
import jakarta.persistence.*;

@Entity
@Table(name = "offering")
public class Offering {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;
    private double price;

    @ManyToOne
    @JoinColumn(name="vendor_id")
    private Vendor vendor;

    public Offering() {}

    public Offering(Long id, String description, double price, Vendor vendor) {
        this.id = id;
        this.description = description;
        this.price = price;
        this.vendor = vendor;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
}
