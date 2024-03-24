INSERT INTO
    person_visits (
        id,
        person_id,
        pizzeria_id,
        visit_date
    )
VALUES ( (
            SELECT MAX(id) + 1
            FROM
                person_visits
        ), (
            SELECT id
            FROM person
            WHERE
                NAME = 'Dmitriy'
        ), (
            SELECT pz.id
            FROM pizzeria pz
                JOIN menu m ON pz.id = m.pizzeria_id
            WHERE
                NAME <> 'Papa Johns'
                AND price < 800
            ORDER BY 1
            LIMIT
                1
        ), '2022-01-08'
    );

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT * FROM mv_dmitriy_visits_and_eats;