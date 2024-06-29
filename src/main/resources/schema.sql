CREATE TABLE IF NOT EXISTS Vendor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    locations_covered JSON,
    rating DECIMAL(3, 1),
    services_offered JSON
);
