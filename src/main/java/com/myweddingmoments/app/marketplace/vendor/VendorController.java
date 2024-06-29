package com.myweddingmoments.app.marketplace.vendor;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/vendors")
public class VendorController {

    private final VendorService vendorService;

    @Autowired
    public VendorController(VendorService vendorService) {
        this.vendorService = vendorService;
    }

    // Get
    @GetMapping("")
    public List<Vendor> getAllVendors() {
        return vendorService.getAllVendors();
    }

    @GetMapping("/{id}")
    public Vendor getVendorById(@PathVariable Long id) {
        return vendorService.getVendorById(id);
    }

    // Post
    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("")
    public void addVendor(@Valid @RequestBody Vendor vendor) {
        vendorService.addVendor(vendor);
    }

    // Update
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @PostMapping("/{id}")
    public void updateVendor(@Valid @RequestBody Vendor vendor, @PathVariable Long id) {
        vendorService.updateVendor(vendor, id);
    }

    // Delete
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteVendor(@PathVariable Long id) {
        boolean isDeleted = vendorService.deleteVendor(id);

        if (isDeleted) return ResponseEntity.noContent().build();
        else return ResponseEntity.notFound().build();
    }

}
