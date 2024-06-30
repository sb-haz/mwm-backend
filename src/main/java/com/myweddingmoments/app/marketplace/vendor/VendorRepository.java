package com.myweddingmoments.app.marketplace.vendor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.simple.JdbcClient;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class VendorRepository {

    private final JdbcClient jdbcClient;
    private static final Logger logger = LoggerFactory.getLogger(VendorRepository.class);

    public VendorRepository(JdbcClient jdbcClient) {
        this.jdbcClient = jdbcClient;
    }

    public List<Vendor> getAllVendors() {
        return jdbcClient.sql("SELECT * FROM vendor")
                .query(Vendor.class)
                .list();
    }

    public Optional<Vendor> getVendorById(Long id) {
        return jdbcClient.sql("SELECT * FROM vendor WHERE id = :id")
                .param("id", id)
                .query(Vendor.class)
                .optional();
    }

    public void addVendor(Vendor vendor) {
    }

    public void updateVendor(Vendor vendor, Long id) {
    }

    public boolean deleteVendor(Long id) {
        return false;
    }
}