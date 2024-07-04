package com.myweddingmoments.app.marketplace.offering;

import com.myweddingmoments.app.marketplace.offering.exceptions.OfferingNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class OfferingService {

    private final OfferingRepository offeringRepository;

    @Autowired
    public OfferingService(OfferingRepository offeringRepository) {
        this.offeringRepository = offeringRepository;
    }

    public List<Offering> getAllOfferings() {
        return offeringRepository.findAll();
    }

    public Offering getOfferingById(Long id) {
        Optional<Offering> offering = offeringRepository.findById(id);
        if (offering.isEmpty()) {
            throw new OfferingNotFoundException();
        }
        return offering.get();
    }

    @Transactional
    public Offering addOffering(Offering offering) {
        return offeringRepository.save(offering);
    }

    @Transactional
    public Offering updateOffering(Long id, Offering offering) {
        Optional<Offering> existingOfferingOptional = offeringRepository.findById(id);
        if (existingOfferingOptional.isEmpty()) {
            throw new OfferingNotFoundException();
        }
        Offering existingOffering = existingOfferingOptional.get();
        existingOffering.setDescription(offering.getDescription());
        existingOffering.setPrice(offering.getPrice());

        return offeringRepository.save(existingOffering);
    }

    @Transactional
    public boolean deleteOffering(Long id) {
        Offering offering = offeringRepository.findById(id).orElseThrow(OfferingNotFoundException::new);
        offeringRepository.delete(offering);
        return true;
    }
}