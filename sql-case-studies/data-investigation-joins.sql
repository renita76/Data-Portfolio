-- =========================================================
-- Data Investigation & Joins Case Study
-- Author: Renita Johnson
--
-- Problem:
-- Explore relationships across multiple tables (ANCHORS, PUB_DOC, CONCEPTS) to
-- understand data ownership, completeness, and scraping status. This type of analysis
-- is crucial for auditing and validating datasets before reporting or aggregation.
--
-- Approach:
-- 1. Join anchor-level data to document and concept metadata to provide context.
-- 2. Use DISTINCT and aggregation as needed to reduce duplication.
-- 3. Apply window functions (ROW_NUMBER) for record ranking and deduplication.
-- 4. Inspect relevant columns (source, doc_id, concept_id, managed_by, last_scraped)
--    to validate the data.
--
-- Key Skills Demonstrated:
-- - Multi-table joins and relationship exploration
-- - Deduplication and ranking using window functions
-- - Investigative SQL to support data quality and auditing
-- - Understanding and documenting data relationships
-- =========================================================

WITH main_table AS (
    SELECT
        a1.doc_id,
        a1.anchor_id,
        a1.anchor_heading,
        p2.uri,
        p2.title,
        p2.source,
        p2.concept_id,
        p2.category,
        c.managed_by,
        c.last_scraped
    FROM ANCHORS a1
    LEFT JOIN PUB_DOC p2 ON a1.doc_id = p2.doc_id
    LEFT JOIN CONCEPTS c ON p2.concept_id = c.id
),

ranked_table AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY doc_id ORDER BY anchor_id DESC) AS rn
    FROM main_table
)

SELECT 
    doc_id,
    anchor_id,
    anchor_heading,
    title,
    source,
    concept_id,
    managed_by,
    last_scraped
FROM ranked_table
WHERE rn = 1
ORDER BY doc_id DESC;
