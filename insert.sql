SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/data/transform.csv' 
INTO TABLE network_logs 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n' (
    metric,
    value
);
