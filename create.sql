CREATE TABLE IF NOT EXISTS network_logs ( 
    server_name VARCHAR(255), 
    server_id INT,
    latency FLOAT, 
    jitter FLOAT, 
    packet_loss INT, 
    download BIGINT, 
    upload BIGINT, 
    download_bytes BIGINT, 
    upload_bytes BIGINT, 
    share_url VARCHAR(255), 
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);