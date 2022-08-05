-- a. A list of owner_name and pet_count
SELECT po.owner_name AS owner_name,
    COUNT(DISTINCT pd.id) AS pet_count
FROM PetOwner po
LEFT JOIN PetData pd ON (PetOwner.id = pd.owner_id)
GROUP BY po.owner_name

-- b. A list of unique owner_name that own a pet with pet_type 2
SELECT po.owner_name AS owner_name
FROM PetOwner po
INNER JOIN PetData pd On (PetOwner.id = PetData.owner_id)
WHERE pd.pet_type = 2
GROUP BY po.owner_name