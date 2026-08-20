-- Gram Panchayat Budget Allocation Optimizer: schema stub
-- Fill in / adjust columns as the data model is finalized.

CREATE TABLE IF NOT EXISTS villages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    panchayat_name VARCHAR(255),
    population INT,
    district VARCHAR(255),
    state VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS infrastructure_gaps (
    id INT AUTO_INCREMENT PRIMARY KEY,
    village_id INT,
    sector ENUM('roads', 'water', 'sanitation', 'education') NOT NULL,
    gap_score FLOAT,
    FOREIGN KEY (village_id) REFERENCES villages(id)
);

CREATE TABLE IF NOT EXISTS scheme_guidelines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    scheme_name VARCHAR(255),
    sector ENUM('roads', 'water', 'sanitation', 'education') NOT NULL,
    min_allocation_pct FLOAT,
    max_allocation_pct FLOAT
);

CREATE TABLE IF NOT EXISTS budget_allocations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    village_id INT,
    sector ENUM('roads', 'water', 'sanitation', 'education') NOT NULL,
    allocated_amount DECIMAL(12, 2),
    projected_impact_score FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (village_id) REFERENCES villages(id)
);
