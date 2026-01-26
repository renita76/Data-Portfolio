# 🔍 SQL Case Studies: Data Validation & Content Analysis

This folder contains a collection of focused SQL case studies demonstrating how I analyze, validate, and investigate real-world datasets in production-style environments.

Unlike end-to-end analytics projects, these case studies emphasize **analytical correctness**, **data quality**, and **business-rule enforcement** — critical skills for ensuring insights are trustworthy before they are used for reporting or decision-making.

## What These Case Studies Demonstrate

Across these queries, I focus on:

* **Data validation & auditing**: Identifying records that meet or fail defined business rules
* **Latest-record selection**: Correctly selecting the most recent observation per entity to avoid double counting
* **Text & metadata analysis**: Extracting meaningful signals from semi-structured content (e.g., anchors, specifications, blockquotes)
* **Deduplication & entity resolution**: Ensuring one reliable row per document, concept, or identifier
* **Investigative querying**: Exploring relationships across multiple tables to understand how systems behave before aggregating results

## Common Techniques Used

* Common Table Expressions (CTEs) for readability and step-by-step logic
* Window functions such as `ROW_NUMBER()` for deduplication and recency logic
* String functions and pattern matching for content analysis
* Joins across relational tables to audit metadata and ownership

## How This Work Fits Into Analytics

These case studies reflect common scenarios encountered in analytics roles, including:

* Validating scraped or ingested data before analysis
* Auditing content systems for completeness and correctness
* Investigating edge cases and anomalies
* Translating ambiguous business questions into precise SQL logic

Together, these examples complement my end-to-end analytics projects by demonstrating the technical rigor and analytical thinking required to work with real-world data.
