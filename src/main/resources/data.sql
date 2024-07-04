-- Insert statements for Vendor table
INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Exotic Chauffeur Hire', 'exotic@outlook.com', '+44 1234567890', 4.9);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Fahima''s Cakes & Desserts', 'fahima@gmail.com', '+44 9876543210', 4.8);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Supreme Events UK', 'enquiries@supremeeventsuk.com', '+44 7456123890', 4.7);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Luxury Limo Rentals', 'info@luxurylimorentals.co.uk', '+44 7700112233', 4.9);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Gourmet Delights Catering', 'info@gourmetdelights.co.uk', '+44 7700223344', 4.6);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Elegant Occasions Planning', 'events@elegantoccasionsplanning.com', '+44 7700334455', 4.8);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Deluxe Floral Designs', 'contact@deluxefloraldesigns.com', '+44 7700445566', 4.7);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Grand Marquee Hire', 'info@grandmarqueehire.co.uk', '+44 7700556677', 4.6);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Silver Spoon Catering', 'info@silverspooncatering.com', '+44 7700667788', 4.5);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Elite Party Planners', 'info@elitepartyplanners.co.uk', '+44 7700778899', 4.8);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Bridal Bliss Boutique', 'info@bridalblissboutique.co.uk', '+44 7700889900', 4.7);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Enchanted Entertainment', 'bookings@enchantedentertainment.com', '+44 7700990011', 4.8);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Timeless Wedding Photography', 'info@timelessweddingphotos.co.uk', '+44 7701112233', 4.7);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Bespoke Wedding Stationery', 'orders@bespokeweddingstationery.com', '+44 7701223344', 4.6);

INSERT INTO vendor (name, email, phone_number, rating)
VALUES ('Harmony Wedding Band', 'bookings@harmonyweddingband.co.uk', '+44 7701334455', 4.7);

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
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Luxury Car Rentals', 'Rent luxury cars for special occasions', 'Hourly and daily rates available', 'Chauffeur services included', 4.9, 1, 1);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Transportation', 'Luxury transportation for weddings', 'Packages available based on duration and vehicle type', 'Includes chauffeur service', 4.7, 1, 1);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Vintage Car Hire', 'Classic and vintage cars for weddings', 'Daily rates available', 'Includes uniformed chauffeur', 4.7, 1, 1);

-- Offerings for Fahima's Cakes & Desserts
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Birthday Cakes', 'Customized birthday cakes and desserts', 'Prices vary based on design and size', 'Delivery available within Birmingham area', 4.5, 2, 2);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Dessert Catering', 'Variety of desserts for events', 'Tailored menus available', 'Suitable for weddings, parties, and corporate events', 4.6, 2, 2);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Cake Design', 'Bespoke wedding cake design and creation', 'Prices based on size and complexity', 'Tasting sessions available', 4.8, 2, 2);

-- Offerings for Supreme Events UK
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Event Planning Consultation', 'Initial consultation for event planning', 'Includes brainstorming and initial planning steps', 'Available for all types of events', 4.8, 3, 3);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Full Event Planning', 'Comprehensive event planning and management', 'End-to-end service including vendor coordination and logistics', 'Available nationwide', 4.9, 3, 3);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Destination Wedding Planning', 'Full-service planning for destination weddings', 'Custom quotes based on location and guest count', 'Includes travel arrangements', 4.9, 3, 3);

-- Offerings for Luxury Limo Rentals
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Executive Chauffeur Service', 'Executive chauffeur service for business and leisure', 'Hourly and daily rates available', 'Luxury vehicles with professional chauffeurs', 4.8, 4, 1);

-- Offerings for Gourmet Delights Catering
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Corporate Catering', 'Catering Offerings for corporate events', 'Customizable menus based on dietary preferences', 'Includes setup and cleanup services', 4.7, 5, 2);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Catering', 'Tailored wedding catering services', 'Full-service catering with multiple menu options', 'Available for weddings of all sizes', 4.8, 5, 2);

-- Offerings for Elegant Occasions Planning
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Birthday Party Planning', 'Birthday party planning services', 'Includes theme conceptualization and event management', 'Available in London, Birmingham, and Manchester', 4.7, 6, 3);

-- Offerings for Deluxe Floral Designs
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Floral Arrangements', 'Custom wedding floral designs', 'Tailored to match wedding theme and colors', 'Delivery and setup included', 4.6, 7, 5);

-- Offerings for Grand Marquee Hire
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Luxury Marquee Hire', 'Luxury marquee hire services', 'Includes setup and decoration options', 'Available for weddings and large events', 4.6, 8, 5);

-- Offerings for Bridal Bliss Boutique
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Bridal Gown Fitting', 'Professional fitting service for bridal gowns', 'Fitting fee included with gown purchase', 'Appointments required', 4.8, 11, 7);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Bridesmaid Dress Selection', 'Curated selection of bridesmaid dresses', 'Prices vary by style and designer', 'Group appointments available', 4.7, 11, 7);

-- Offerings for Enchanted Entertainment
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding DJ Services', 'Professional DJ Offerings for weddings', 'Packages start from £500', 'Includes sound system and lighting', 4.9, 12, 9);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Live Band Performance', 'Live music performance for wedding receptions', 'Prices based on duration and band size', 'Customizable song list', 4.8, 12, 9);

-- Offerings for Timeless Wedding Photography
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Day Photography', 'Full-day wedding photography coverage', 'Packages start from £1500', 'Includes edited digital photos and album', 4.9, 13, 4);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Engagement Photoshoot', 'Pre-wedding engagement photography session', 'Starting at £300', 'Choice of location within 20 miles', 4.7, 13, 4);

-- Offerings for Bespoke Wedding Stationery
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Custom Wedding Invitations', 'Personalized wedding invitation design and printing', 'Pricing based on quantity and design complexity', 'Free sample pack available', 4.8, 14, 8);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Day-of Stationery Package', 'Complete package of wedding day stationery', 'Packages start from £400', 'Includes menus, place cards, and signage', 4.7, 14, 8);

-- Offerings for Harmony Wedding Band
INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Wedding Reception Performance', 'Live band performance for wedding receptions', '4-hour performance package from £1800', 'Includes DJ service between sets', 4.9, 15, 9);

INSERT INTO offering (name, description, pricing_fees, additional_info, rating, vendor_id, category_id)
VALUES ('Ceremony Music', 'Live music for wedding ceremonies', 'Starting at £300 for solo musician', 'Choice of instruments available', 4.8, 15, 9);

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