USE final_space_db;

/*
	Escreva uma query que retorne uma coluna com o nome dos personagens
    e uma coluna com o nome de sua espécie.
*/
-- Para retornar exclusivamente personagens que possuem uma espécie associada, usa-se o INNER JOIN
SELECT
  c.Name,
  s.Specie_name
FROM `Character` c
INNER JOIN `Specie` s ON s.Specie_id = c.Specie;

-- Para retornar todos os personagens independente de possuir uma espécie, usa-se o LEFT JOIN
SELECT
  c.Name,
  s.Specie_name
FROM `Character` c
LEFT JOIN `Specie` s ON s.Specie_id = c.Specie;

/*
	Escreva uma query que retorne uma coluna com os nomes dos
    personagens e uma coluna com o nome do seu local de origem.
*/
-- Para retornar exclusivamente personagens que possuem uma location associada, usa-se o INNER JOIN
SELECT
  c.Name,
  l.Location_Name
FROM `Character` c
INNER JOIN `Location` l ON l.Location_id = c.Origin;

-- Para retornar todos os personagens independente de possuir uma espécie, usa-se o LEFT JOIN
SELECT
  c.Name,
  l.Location_Name
FROM `Character` c
LEFT JOIN `Location` l ON l.Location_id = c.Origin;