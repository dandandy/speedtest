SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/data/data.csv' 
INTO TABLE network_logs 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n' (
    server_name,
    latency,
    jitter,
    packet_loss,
    download,
    upload,
    download_bytes,
    upload_bytes,
    share_url
);
