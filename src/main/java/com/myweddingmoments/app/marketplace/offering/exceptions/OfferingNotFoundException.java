package com.myweddingmoments.app.marketplace.offering.exceptions;

public class OfferingNotFoundException extends RuntimeException {
    public OfferingNotFoundException() {
        super("Offering not found");
    }
}
