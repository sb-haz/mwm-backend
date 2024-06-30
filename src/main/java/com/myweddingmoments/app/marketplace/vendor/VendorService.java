package com.myweddingmoments.app.marketplace.vendor;

import com.myweddingmoments.app.marketplace.vendor.exceptions.VendorNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VendorService {

    private final VendorRepository vendorRepository;

    @Autowired
    public VendorService(VendorRepository vendorRepository) {
        this.vendorRepository = vendorRepository;
    }

    public List<Vendor> getAllVendors() {
        return vendorRepository.getAllVendors();
    }

    public Vendor getVendorById(Long id) {
        Optional<Vendor> vendor = vendorRepository.getVendorById(id);
        if (vendor.isEmpty()) throw new VendorNotFoundException();
        return vendor.get();
    }

    public void addVendor(Vendor vendor) {
        // logic before adding a vendor
        vendorRepository.addVendor(vendor);
    }

    public void updateVendor(Vendor vendor, Long id) {
        // logic before updating a vendor
        vendorRepository.updateVendor(vendor, id);
    }

    public boolean deleteVendor(Long id) {
        // logic before deleting a vendor
        return vendorRepository.deleteVendor(id);
    }

}
