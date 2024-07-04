package com.myweddingmoments.app.marketplace.vendor;

import com.myweddingmoments.app.marketplace.vendor.exceptions.VendorNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class VendorService {

    private final VendorRepository vendorRepository;

    @Autowired
    public VendorService(VendorRepository vendorRepository) {
        this.vendorRepository = vendorRepository;
    }

    public List<Vendor> findAllVendors() {
        return vendorRepository.findAll();
    }

    public Vendor findVendorById(Long id) {
        Optional<Vendor> vendor = vendorRepository.findById(id);
        if (vendor.isEmpty()) throw new VendorNotFoundException();
        return vendor.get();
    }

    @Transactional
    public void addVendor(Vendor vendor) {
        vendorRepository.save(vendor);
    }

    @Transactional
    public Vendor updateVendor(Vendor vendor, Long id) {
        Optional<Vendor> existingVendorOptional = vendorRepository.findById(id);
        if (existingVendorOptional.isEmpty()) {
            throw new VendorNotFoundException();
        }
        Vendor existingVendor = existingVendorOptional.get();
        existingVendor.setName(vendor.getName());
//        existingVendor.setLocation(vendor.getLocation());

        return vendorRepository.save(existingVendor);
    }

    @Transactional
    public boolean deleteVendor(Long id) {
        Vendor vendor = vendorRepository.findById(id).orElseThrow(VendorNotFoundException::new);
        vendorRepository.delete(vendor);
        return true;
    }

}
