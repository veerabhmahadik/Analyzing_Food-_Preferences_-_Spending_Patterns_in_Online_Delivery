-- Customers Table
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    reg_date DATE
);

-- Restaurants Table
CREATE TABLE IF NOT EXISTS restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(255) NOT NULL,
    city VARCHAR(100),
    opening_hours VARCHAR(100)
);

-- Riders Table
CREATE TABLE IF NOT EXISTS riders (
    rider_id INT PRIMARY KEY,
    rider_name VARCHAR(255) NOT NULL,
    sign_up DATE
);

-- Orders Table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    order_item TEXT,
    order_date DATE,
    order_time TIME,
    order_status VARCHAR(50),
    total_amount DECIMAL(10,2) CHECK (total_amount >= 0),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id) ON DELETE CASCADE
);

-- Deliveries Table
CREATE TABLE IF NOT EXISTS deliveries (
    delivery_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    delivery_status VARCHAR(50),
    delivery_time TIME,
    rider_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (rider_id) REFERENCES riders(rider_id) ON DELETE SET NULL
);