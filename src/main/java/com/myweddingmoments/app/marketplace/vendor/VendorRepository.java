package com.myweddingmoments.app.marketplace.vendor;

import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class VendorRepository {

    private List<Vendor> vendors = new ArrayList<>();

    List<Vendor> getAllVendors() {
        return vendors;
    }

    Optional<Vendor> getVendorById(Long id) {
        return vendors.stream()
                .filter(vendor -> vendor.getId().equals(id))
                .findFirst();
    }

    void addVendor(Vendor vendor) {
        vendors.add(vendor);
    }

    void updateVendor(Vendor vendor, Long id) {
        Optional<Vendor> existingVendor = getVendorById(id);
        if (existingVendor.isPresent()) vendors.set(vendors.indexOf(existingVendor.get()), vendor);
    }

    boolean deleteVendor(Long id) {
        // Try to find the vendor
        Optional<Vendor> vendorOptional = vendors.stream()
                .filter(vendor -> vendor.getId().equals(id))
                .findFirst();

        // If vendor exists, remove it
        if (vendorOptional.isPresent()) {
            vendors.remove(vendorOptional.get());
            return true;
        }

        return false;
    }

    // Temp init method
    @PostConstruct
    private void init() {
        vendors.add(new Vendor(1L,
                "Exotic Chauffeur Hire",
                "exotic@outlook.com",
                List.of("United Kingdom"),
                4.9,
                new ArrayList<>()));

        vendors.add(new Vendor(2L,
                "Fahima's Cakes & Desserts",
                "fahima@gmail.com",
                List.of("Birmingham"),
                4.8,
                new ArrayList<>()));

        vendors.add(new Vendor(3L,
                "Supreme Events UK",
                "enquiries@supremeeventsuk.com",
                List.of("London", "Birmingham", "Manchester"),
                4.7,
                new ArrayList<>()));
    }

}