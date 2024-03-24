SELECT
    order_date,
    person.name || ' (age:' || age || ')' AS person_information
FROM person_order
    INNER JOIN person ON person_order.person_id = person.id
ORDER BY
    order_date ASC,
    person_information ASC;