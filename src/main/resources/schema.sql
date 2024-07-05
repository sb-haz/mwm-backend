-- Vendor table
CREATE TABLE IF NOT EXISTS vendor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    owner VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    rating DECIMAL(3, 1),
    locations_covered VARCHAR(255)
);

-- Category table
CREATE TABLE IF NOT EXISTS category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Offering table
CREATE TABLE IF NOT EXISTS offering (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DOUBLE,
    additional_info TEXT,
    rating DECIMAL(3, 1),

    vendor_id INT,
    category_id INT,
    FOREIGN KEY (vendor_id) REFERENCES vendor(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

-- Location table
CREATE TABLE IF NOT EXISTS location (
    id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,

    vendor_id INT NOT NULL,
    FOREIGN KEY (vendor_id) REFERENCES vendor(id)
);