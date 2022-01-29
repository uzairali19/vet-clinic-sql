SELECT
  COUNT(*)
FROM
  visits
where
  animal_id = 4;
SELECT
  *
FROM
  visits
where
  vet_id = 2;
SELECT
  *
FROM
  owners
where
  email = 'owner_18327@mail.com';
-- SOLUTION -------------------------------------------------------------------------------------------------------------------------------------------
  -- Create indexs with reference to the data
  -- 1. CREATE INDEX animal_id ON visits (animal_id);
  -- 2. CREATE INDEX vet_animal ON visits (vet_id, animal_id);
  -- 3. CREATE INDEX email_id ON owners (email);