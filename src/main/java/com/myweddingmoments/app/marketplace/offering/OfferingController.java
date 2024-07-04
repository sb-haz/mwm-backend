package com.myweddingmoments.app.marketplace.offering;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/services")
public class OfferingController {

    private final OfferingService offeringService;

    @Autowired
    public OfferingController(OfferingService offeringService) {
        this.offeringService = offeringService;
    }

    // GET /api/services
    @GetMapping("")
    public List<Offering> getAllOfferings() {
        return offeringService.getAllOfferings();
    }

    // GET /api/services/{id}
    @GetMapping("/{id}")
    public ResponseEntity<Offering> getOfferingById(@PathVariable Long id) {
        Offering offering = this.offeringService.getOfferingById(id);
        return ResponseEntity.ok(offering);
    }

    // POST /api/services
    @PostMapping("")
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseEntity<Offering> addOffering(@Valid @RequestBody Offering offering) {
        Offering addedOffering = this.offeringService.addOffering(offering);
        return ResponseEntity.status(HttpStatus.CREATED).body(addedOffering);
    }

    // PUT /api/services/{id}
    @PutMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public ResponseEntity<Offering> updateOffering(@PathVariable Long id, @Valid @RequestBody Offering offering) {
        Offering updatedOffering = this.offeringService.updateOffering(id, offering);
        return ResponseEntity.noContent().build();
    }

    // DELETE /api/services/{id}
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteOffering(@PathVariable Long id) {
        boolean isDeleted = offeringService.deleteOffering(id);
        if (isDeleted) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}