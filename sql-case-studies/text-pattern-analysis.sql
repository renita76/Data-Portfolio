-- =========================================================
-- Text Pattern Analysis Case Study
-- Author: Renita Johnson
--
-- Problem:
-- Extract meaningful patterns from semi-structured text within document content,
-- such as technical specifications, tier levels, and special notations (e.g., f-stop).
-- This is critical for turning unstructured text into analyzable signals.
--
-- Approach:
-- 1. Filter the ANCHORS or PUB_DOC tables for relevant headings and content patterns.
-- 2. Use pattern matching functions (CONTAINS, ILIKE, REGEXP) to isolate key text elements.
-- 3. Flatten or split text blocks when needed (e.g., <blockquote> elements) for row-wise analysis.
-- 4. Apply deduplication and row selection logic (ROW_NUMBER) when multiple matches exist per document.
--
-- Key Skills Demonstrated:
-- - Text and regex functions for pattern detection
-- - Handling semi-structured data in SQL
-- - Deduplication with window functions
-- - Joining metadata for validation and contextual insight
-- =========================================================

WITH split_blockquotes AS (
    SELECT
        doc_id,
        source,
        title,
        category,
        TRIM(REGEXP_REPLACE(
            REGEXP_SUBSTR(f.value || '</blockquote>', '<blockquote[^>]*>(.*?)</blockquote>', 1, 1, 'is', 1),
            '<[^>]+>', ''
        )) AS blockquote_text
    FROM PUB_DOC,
         LATERAL FLATTEN(input => SPLIT(doc_content, '</blockquote>')) f
    WHERE source ILIKE '%support.apple.com%'
)

SELECT *
FROM split_blockquotes
WHERE blockquote_text ILIKE '%tier 3%'
  AND blockquote_text NOT ILIKE '%tier 2%'
  AND blockquote_text LIKE '% %'  -- Optional: ensure spacing check
ORDER BY doc_id DESC;
