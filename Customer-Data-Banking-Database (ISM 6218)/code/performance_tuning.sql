-- PARTITION THE CUSTOMERS TABLE
ALTER TABLE CUSTOMERS
PARTITION BY RANGE (AGE) (
    PARTITION P1 VALUES LESS THAN (30),
    PARTITION P2 VALUES LESS THAN (35),
    PARTITION P3 VALUES LESS THAN (40),
    PARTITION P4 VALUES LESS THAN (45),
    PARTITION P5 VALUES LESS THAN (50),
    PARTITION P6 VALUES LESS THAN (95)
);

-- CREATE INDEXES ON THE CUSTOMER ENTITY
CREATE INDEX MONTH_BTREE ON CUSTOMERS(MONTH);
CREATE INDEX BALANCE_BTREE ON CUSTOMERS(BALANCE);

-- PARALLEL WITH DEGREE OF 4 ON AND RERUN THE QUERY
ALTER TABLE CUSTOMERS PARALLEL 4;
