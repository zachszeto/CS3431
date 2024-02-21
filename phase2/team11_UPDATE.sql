UPDATE Business
SET num_tips = (
    SELECT COUNT(*)
    FROM Tips
    WHERE Business.business_id = Tips.business_id
)
WHERE business_id = business_id;

UPDATE Users
SET tip_count = (
    SELECT COUNT(*)
    FROM Tips
    WHERE Users.user_id = Tips.user_id
)
WHERE user_id = user_id;


--Test Statements: num_tips
SELECT business_id, COUNT(*) AS num_tips
FROM Tips
WHERE Business.business_id = 'iA4zWe_L1R4ruaEZ8N4KPA';
GROUP BY business_id;

SELECT business_id, COUNT(*) AS num_tips
FROM Tips
WHERE Business.business_id = 'HTngUd7s8kLBiAbEtd65Ug';
GROUP BY business_id;

SELECT business_id, COUNT(*) AS num_tips
FROM Tips
WHERE Business.business_id = 'FiG8PzWKRYehtPPcPtOStw';
GROUP BY business_id;


--Test Statements: tip_count
SELECT user_id, COUNT(*) AS tip_count
FROM Tips
WHERE Users.user_id = 'T0gWkTHWRChVUe_Dn1F8nw';
GROUP BY user_id;

SELECT user_id, COUNT(*) AS tip_count
FROM Tips
WHERE Users.user_id = 'fRJpK_b0rrjpBgRZjvfvgA';
GROUP BY user_id;

SELECT user_id, COUNT(*) AS tip_count
FROM Tips
WHERE Users.user_id = 'P4XUvN_8alI6dpTC_3LMkg';
GROUP BY user_id;