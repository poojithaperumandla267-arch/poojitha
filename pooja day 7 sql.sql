CREATE TABLE product_inventory10 (
    product_id SERIAL PRIMARY KEY,
    sku VARCHAR(50),
    description TEXT,
    wholesale_cost NUMERIC(10, 2)
);

INSERT INTO product_inventory10 (sku, description, wholesale_cost) VALUES
('HOME-1234', 'Smart Wireless Mouse', 12.50),
('HOME-ABCD', 'Comfortable cotton jacket', 18.00),
('HOME-9988', 'Stainless Steel Tumbler', 10.00),
('ELEC-5555', 'Wireless Bluetooth Speaker', 25.00),
('HOME-5678', 'Winter JACKET', 14.50),
('HOME-XY12', 'Plain Ceramic Mug', 8.00);

SELECT * 
FROM product_inventory10 
WHERE description LIKE '%Wireless%';

SELECT * 
FROM product_inventory10 
WHERE description ILIKE '%jacket' 
   OR description ILIKE '%tumbler';

   SELECT * 
FROM product_inventory10 
WHERE sku LIKE 'HOME-____' 
  AND wholesale_cost < 15.00;