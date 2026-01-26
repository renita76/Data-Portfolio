-- =========================================================
-- Latest Record Selection Case Study
-- Author: Renita Johnson
--
-- Problem:
-- Identify the most recent or latest record for each entity (document, concept, or anchor)
-- to prevent duplicate counts and ensure analyses are based on the most up-to-date information.
--
-- Approach:
-- 1. Use Common Table Expressions (CTEs) to isolate relevant tables.
-- 2. Apply ROW_NUMBER() with PARTITION BY entity_id (doc_id or concept_id)
--    and ORDER BY timestamp or anchor_id DESC.
-- 3. Select only the top row per entity to represent the latest record.
-- 4. Join to metadata tables as needed for validation or inspection.
--
-- Key Skills Demonstrated:
-- - Window functions (ROW_NUMBER) for deduplication and latest-record logic
-- - Data validation across related tables
-- - Efficient filtering and inspection of large datasets
-- =========================================================

WITH latest_records AS (
    SELECT
        a1.doc_id,
        a1.anchor_id,
        p2.title,
        p2.source,
        p2.concept_id,
        c.managed_by,
        c.last_scraped,
        ROW_NUMBER() OVER (PARTITION BY a1.doc_id ORDER BY a1.anchor_id DESC) AS rn
    FROM ANCHORS a1
    LEFT JOIN PUB_DOC p2 ON a1.doc_id = p2.doc_id
    LEFT JOIN CONCEPTS c ON p2.concept_id = c.id
)

SELECT
    doc_id,
    anchor_id AS latest_anchor_id,
    title,
    source,
    concept_id,
    managed_by,
    last_scraped
FROM latest_records
WHERE rn = 1
ORDER BY doc_id DESC;
