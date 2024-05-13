-- CREATE THE CUSTOMERS TABLE AND SET CONSTRAINTS
CREATE TABLE CUSTOMERS (
    CUSTOMER_ID INT NOT NULL PRIMARY KEY,
    AGE NUMBER NOT NULL,
    JOB_CODE INT NOT NULL,
    MARITAL_STATUS_CODE INT NOT NULL,
    EDU_LEVEL_CODE INT NOT NULL,
    BALANCE INT NOT NULL,
    HOUSING_STATUS_CODE INT NOT NULL,
    LOAN_STATUS_CODE INT NOT NULL,
    CONTACT INT NOT NULL,
    MONTH CHAR(10) NOT NULL,
    DURATION INT NOT NULL,
    CAMPAIN INT NOT NULL,
    PDAYS INT NOT NULL,
    PREVIOUS INT NOT NULL,
    POUTCOME INT NOT NULL,
    RESULTS CHAR(3) NOT NULL
);

-- CREATE THE JOBS TABLE AND SET CONSTRAINTS
CREATE TABLE JOBS (
    JOB_CODE INT NOT NULL PRIMARY KEY,
    JOB_NAME CHAR(20) NOT NULL,
    JOB_TYPE_CODE INT NOT NULL
);

-- REPEATED CUSTOMER TABLE (for consistency, only need one instance, included for completeness)
CREATE TABLE Customers (
    Customer_ID int not null primary key,
    age NUMBER not null,
    job_code int not null,
    marital_status_code int not null,
    edu_level_code int not null,
    balance int not null,
    housing_status_code int not null,
    loan_status_code int not null,
    contact int not null,
    month char(10) not null,
    duration int not null,
    campain int not null,
    pdays int not null,
    previous int not null,
    poutcome int not null,
    results char(3) not null
);
