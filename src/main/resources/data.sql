-- Insert statements for Vendor table with owner field and mixed names
INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Exotic Chauffeur Hire', 'Mohammed Rahman', 'exotic@outlook.com', '+44 1234567890', 4.9);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Fahima''s Cakes & Desserts', 'Fatima Chowdhury', 'fahima@gmail.com', '+44 9876543210', 4.8);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Supreme Events UK', 'Ali', 'enquiries@supremeeventsuk.com', '+44 7456123890', 4.7);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Luxury Limo Rentals', 'Ahmed Hussain', 'info@luxurylimorentals.co.uk', '+44 7700112233', 4.9);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Gourmet Delights Catering', 'Sara Khan', 'info@gourmetdelights.co.uk', '+44 7700223344', 4.6);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Elegant Occasions Planning', 'Imran Haque', 'events@elegantoccasionsplanning.com', '+44 7700334455', 4.8);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Deluxe Floral Designs', 'Aisha Choudhury', 'contact@deluxefloraldesigns.com', '+44 7700445566', 4.7);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Grand Marquee Hire', 'Abdul Miah', 'info@grandmarqueehire.co.uk', '+44 7700556677', 4.6);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Silver Spoon Catering', 'Fatema Islam', 'info@silverspooncatering.com', '+44 7700667788', 4.5);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Elite Party Planners', 'Nadia Begum', 'info@elitepartyplanners.co.uk', '+44 7700778899', 4.8);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Bridal Bliss Boutique', 'Nusrat Ahmed', 'info@bridalblissboutique.co.uk', '+44 7700889900', 4.7);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Enchanted Entertainment', 'Ayesha Rahman', 'bookings@enchantedentertainment.com', '+44 7700990011', 4.8);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Timeless Wedding Photography', 'Rahim Khan', 'info@timelessweddingphotos.co.uk', '+44 7701112233', 4.7);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Bespoke Wedding Stationery', 'Farhana Ali', 'orders@bespokeweddingstationery.com', '+44 7701223344', 4.6);

INSERT INTO vendor (name, owner, email, phone_number, rating)
VALUES ('Harmony Wedding Band', 'Sohail Ahmed', 'bookings@harmonyweddingband.co.uk', '+44 7701334455', 4.7);

-- Insert statements for Category table
INSERT INTO category (name) VALUES ('Transportation');
INSERT INTO category (name) VALUES ('Food & Catering');
INSERT INTO category (name) VALUES ('Event Planning');
INSERT INTO category (name) VALUES ('Photography & Videography');
INSERT INTO category (name) VALUES ('Floral & Decor');
INSERT INTO category (name) VALUES ('Entertainment');
INSERT INTO category (name) VALUES ('Bridal Wear');
INSERT INTO category (name) VALUES ('Stationery');
INSERT INTO category (name) VALUES ('Music & Entertainment');

-- Insert statements for Offering table
-- Offerings for Exotic Chauffeur Hire
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Luxury Car Rentals', 'Rent luxury cars for special occasions', 250.0, 'Chauffeur services included', 4.9, 1, 1);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Transportation', 'Luxury transportation for weddings', 500.0, 'Includes chauffeur service', 4.7, 1, 1);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Vintage Car Hire', 'Classic and vintage cars for weddings', 400.0, 'Includes uniformed chauffeur', 4.7, 1, 1);

-- Offerings for Fahima's Cakes & Desserts
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Birthday Cakes', 'Customized birthday cakes and desserts', 100.0, 'Delivery available within Birmingham area', 4.5, 2, 2);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Dessert Catering', 'Variety of desserts for events', 300.0, 'Suitable for weddings, parties, and corporate events', 4.6, 2, 2);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Cake Design', 'Bespoke wedding cake design and creation', 400.0, 'Tasting sessions available', 4.8, 2, 2);

-- Offerings for Supreme Events UK
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Event Planning Consultation', 'Initial consultation for event planning', 150.0, 'Available for all types of events', 4.8, 3, 3);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Full Event Planning', 'Comprehensive event planning and management', 1000.0, 'Available nationwide', 4.9, 3, 3);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Destination Wedding Planning', 'Full-service planning for destination weddings', 2500.0, 'Includes travel arrangements', 4.9, 3, 3);

-- Offerings for Luxury Limo Rentals
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Executive Chauffeur Service', 'Executive chauffeur service for business and leisure', 300.0, 'Luxury vehicles with professional chauffeurs', 4.8, 4, 1);

-- Offerings for Gourmet Delights Catering
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Corporate Catering', 'Catering Offerings for corporate events', 500.0, 'Customizable menus based on dietary preferences', 4.7, 5, 2);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Catering', 'Tailored wedding catering services', 1000.0, 'Available for weddings of all sizes', 4.8, 5, 2);

-- Offerings for Elegant Occasions Planning
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Birthday Party Planning', 'Birthday party planning services', 200.0, 'Available in London, Birmingham, and Manchester', 4.7, 6, 3);

-- Offerings for Deluxe Floral Designs
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Floral Arrangements', 'Custom wedding floral designs', 300.0, 'Delivery and setup included', 4.6, 7, 5);

-- Offerings for Grand Marquee Hire
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Luxury Marquee Hire', 'Luxury marquee hire services', 1500.0, 'Available for weddings and large events', 4.6, 8, 5);

-- Offerings for Bridal Bliss Boutique
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Bridal Gown Fitting', 'Professional fitting service for bridal gowns', 800.0, 'Appointments required', 4.8, 11, 7);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Bridesmaid Dress Selection', 'Curated selection of bridesmaid dresses', 200.0, 'Group appointments available', 4.7, 11, 7);

-- Offerings for Enchanted Entertainment
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding DJ Services', 'Professional DJ Offerings for weddings', 500.0, 'Includes sound system and lighting', 4.9, 12, 9);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Live Band Performance', 'Live music performance for wedding receptions', 2000.0, 'Customizable song list', 4.8, 12, 9);

-- Offerings for Timeless Wedding Photography
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Day Photography', 'Full-day wedding photography coverage', 1500.0, 'Includes edited digital photos and album', 4.9, 13, 4);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Engagement Photoshoot', 'Pre-wedding engagement photography session', 300.0, 'Choice of location within 20 miles', 4.7, 13, 4);

-- Offerings for Bespoke Wedding Stationery
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Custom Wedding Invitations', 'Personalized wedding invitation design and printing', 200.0, 'Free sample pack available', 4.8, 14, 8);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Day-of Stationery Package', 'Complete package of wedding day stationery', 400.0, 'Includes menus, place cards, and signage', 4.7, 14, 8);

-- Offerings for Harmony Wedding Band
INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Reception Performance', 'Live band performance for wedding receptions', 1800.0, 'Includes DJ service between sets', 4.9, 15, 9);

INSERT INTO offering (name, description, price, additional_info, rating, vendor_id, category_id)
VALUES ('Ceremony Music', 'Live music for wedding ceremonies', 300.0, 'Choice of instruments available', 4.8, 15, 9);

-- Insert statements for Location table
INSERT INTO location (city, country, vendor_id)
VALUES ('London', 'United Kingdom', 1);

INSERT INTO location (city, country, vendor_id)
VALUES ('Birmingham', 'United Kingdom', 2);

INSERT INTO location (city, country, vendor_id)
VALUES ('Manchester', 'United Kingdom', 3);

INSERT INTO location (city, country, vendor_id)
VALUES ('Birmingham', 'United Kingdom', 2);

INSERT INTO location (city, country, vendor_id)
VALUES ('Liverpool', 'United Kingdom', 4);

INSERT INTO location (city, country, vendor_id)
VALUES ('Glasgow', 'United Kingdom', 5);

INSERT INTO location (city, country, vendor_id)
VALUES ('Edinburgh', 'United Kingdom', 5);

INSERT INTO location (city, country, vendor_id)
VALUES ('Cardiff', 'United Kingdom', 6);

INSERT INTO location (city, country, vendor_id)
VALUES ('Bristol', 'United Kingdom', 6);

INSERT INTO location (city, country, vendor_id)
VALUES ('Leeds', 'United Kingdom', 6);

INSERT INTO location (city, country, vendor_id)
VALUES ('Sheffield', 'United Kingdom', 7);

INSERT INTO location (city, country, vendor_id)
VALUES ('Newcastle', 'United Kingdom', 7);

INSERT INTO location (city, country, vendor_id)
VALUES ('Brighton', 'United Kingdom', 11);

INSERT INTO location (city, country, vendor_id)
VALUES ('Oxford', 'United Kingdom', 12);

INSERT INTO location (city, country, vendor_id)
VALUES ('Cambridge', 'United Kingdom', 13);

INSERT INTO location (city, country, vendor_id)
VALUES ('York', 'United Kingdom', 14);

INSERT INTO location (city, country, vendor_id)
VALUES ('Belfast', 'United Kingdom', 15);

INSERT INTO location (city, country, vendor_id)
VALUES ('Southampton', 'United Kingdom', 1);

INSERT INTO location (city, country, vendor_id)
VALUES ('Leicester', 'United Kingdom', 2);

INSERT INTO location (city, country, vendor_id)
VALUES ('Nottingham', 'United Kingdom', 3);