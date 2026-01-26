-- =========================================================
-- Content & Metadata Validation Case Study
-- Author: Renita Johnson
--
-- Problem:
-- Validate and analyze content records to ensure that only relevant,
-- production-ready documentation is included in analysis. This includes
-- identifying technical specification sections, filtering by content
-- relevance, and ensuring one reliable record per document.
--
-- Approach:
-- 1. Filter anchor-level data for relevant headings and content patterns
--    (e.g., camera technical specifications).
-- 2. Use pattern matching to identify meaningful technical signals
--    (such as f-stop notation).
-- 3. Apply window functions to select the most recent or most relevant
--    anchor per document.
-- 4. Join document metadata to support validation and inspection.
--
-- Key Skills Demonstrated:
-- - Text and pattern analysis
-- - Content validation using business rules
-- - Window functions (ROW_NUMBER)
-- - Relational joins for metadata auditing
-- =========================================================

WITH filtered_anchors AS (
    SELECT *
    FROM ANCHORS
    WHERE (
        CONTAINS(anchor_content, 'Technical Specification')
        OR CONTAINS(anchor_content, 'Tech Spec')
    )
      AND CONTAINS(anchor_heading, 'Camera')
      AND (
        CONTAINS(anchor_content, 'f/')
        OR CONTAINS(anchor_content, 'ƒ/')
      )
),

joined_anchors AS (
    SELECT
        fa.doc_id,
        fa.anchor_id,
        fa.anchor_heading,
        fa.anchor_content,
        d.source,
        ROW_NUMBER() OVER (
            PARTITION BY fa.doc_id
            ORDER BY fa.anchor_id DESC
        ) AS rn
    FROM filtered_anchors fa
    LEFT JOIN PUB_DOC d
        ON fa.doc_id = d.doc_id
)

SELECT
    doc_id,
    anchor_id,
    anchor_heading,
    anchor_content,
    source
FROM joined_anchors
WHERE rn = 1
ORDER BY anchor_id DESC;
