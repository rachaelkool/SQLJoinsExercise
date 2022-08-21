-- write your queries here
1. joins_exercise=# SELECT * FROM owners o FULL OUTER JOIN vehicles v ON o.id = v.owner_id;
2. joins_exercise=# SELECT first_name, last_name, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id
joins_exercise-# GROUP BY (first_name, last_name) ORDER BY first_name asc;
3. joins_exercise=# SELECT first_name, last_name, COUNT(owner_id), AVG(price) FROM owners o JOIN vehicles v ON o.id = v.owner_id             GROUP BY (first_name, last_name) HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000 ORDER BY first_name desc;