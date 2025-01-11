# SQL Data Warehouse & ETL Project

A concise Oracle-based data warehouse demo integrating two data sources (**MEMBERS** and **MEMBERS_ACQUIRED**) into **MEMBERS_DW**. Includes an ETL procedure, a scheduler for automation, logging tables, and a basic email validation function.

---

## Table of Contents
- [Overview](#overview)
- [Schema Diagram](#schema-diagram)
- [Key Features](#key-features)
- [Setup & Usage](#setup--usage)
- [Data Flow](#data-flow)
- [Potential Enhancements](#potential-enhancements)

---

## Overview
- Multiple source tables: `MEMBERS`, `MEMBER_PHONE`, `MEMBERS_ACQUIRED`
- Data warehouse table with a composite key: `MEMBERS_DW (MEMBER_ID, DATA_SOURCE)`
- ETL procedure merges and updates data from source views
- `DBMS_SCHEDULER` job runs ETL daily
- `ETL_LOG` tracks inserts/updates; `SCHEMA_CHANGE_LOG` tracks schema changes
- Simple email validation function

---

## Schema Diagram

![Schema Diagram](saifa18/ETL_Member_SQL_Project/ETL-Schema.png)



---

## Key Features
1. **Data Warehouse Loading** with `MEMBERS_ETL_PROC`
2. **Audit Logging** in `ETL_LOG`
3. **Daily Automation** via `DBMS_SCHEDULER`
4. **Basic Email Validation** function
5. **Composite Key** handling for `(MEMBER_ID, DATA_SOURCE)`

---

## Setup & Usage

1. **Create Sequences & Tables**  
   - Run the `CREATE SEQUENCES` and `CREATE TABLES` sections in order.

2. **Views & ETL**  
   - `MEMBERS_VIEW` merges `MEMBERS` + `MEMBER_PHONE`.  
   - `MEMBERS_ACQUIRED_VIEW` merges `MEMBERS_ACQUIRED`.  
   - `MEMBERS_ETL_PROC` inserts/updates data in `MEMBERS_DW`.

3. **Scheduler Job**  
   ```sql
   DBMS_SCHEDULER.CREATE_JOB(
       job_name        => 'members_etl_job',
       job_type        => 'PLSQL_BLOCK',
       job_action      => 'BEGIN MEMBERS_ETL_PROC; END;',
       start_date      => SYSTIMESTAMP,
       repeat_interval => 'FREQ=DAILY; BYHOUR=2',
       enabled         => TRUE
   );
****


## Data Flow

1. **Source Tables**  
   - MEMBERS, MEMBER_PHONE, MEMBERS_ACQUIRED

2. **Source Views**  
   - MEMBERS_VIEW, MEMBERS_ACQUIRED_VIEW

3. **ETL Procedure (MEMBERS_ETL_PROC)**  
   - **INSERT** where (MEMBER_ID, DATA_SOURCE) doesn’t exist in MEMBERS_DW.  
   - **UPDATE** if (MEMBER_ID, DATA_SOURCE) exists but data has changed.

4. **ETL_LOG**  
   - Captures the row counts and statuses for each step.

5. **MEMBER_ACTIVITY**  
   - References MEMBERS_DW by (MEMBER_ID, DATA_SOURCE) to track activity records.

---

## Potential Enhancements

- **Add a Surrogate Key**  
  Introduce a DW_MEMBER_ID for MEMBERS_DW to simplify joins and foreign keys in other tables.

- **Data Quality**  
  Expand email or phone validations and possibly standardize addresses.

- **Reporting**  
  Create materialized views or summary tables for analytics.

- **Performance**  
  Add indexes on frequently queried columns or large-volume tables.

- **Error Handling**  
  Expand logging to track row-level error details or step-level durations for more detailed auditing.
