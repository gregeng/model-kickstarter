-- Select the titles of all projects and their pledge amounts.

SELECT projects.title, SUM(pledges.amount) FROM projects
JOIN pledges ON projects.id = pledges.project_id
GROUP BY projects.title;

-- Select the user name, age, and pledge amount for all pledges.

SELECT pledges.id, users.name, users.age, pledges.amount FROM pledges
JOIN users ON pledges.user_id = users.id;

-- Select the titles of all projects that have met their funding goal.

SELECT projects.title, SUM(pledges.amount) FROM projects
JOIN pledges ON projects.id = pledges.project_id
WHERE pledges.amount >= projects.funding_goal;

-- Select user names and amounts of all pledges. Order them by the amount.

-- Not sure why this doesn't work... I just wanted to sum all of emily's pledges:
-- SELECT users.name, SUM(pledges.amount) FROM pledges
-- JOIN users ON pledges.user_id = users.id
-- ORDER BY pledges.amount DESC
-- GROUP BY users.name;

SELECT users.name, pledges.amount FROM pledges
JOIN users ON pledges.user_id = users.id
ORDER BY pledges.amount;

-- Select the category names, and pledge amounts of all pledges in the music category.

SELECT projects.category_id, pledges.amount, categories.category_name FROM projects
JOIN pledges ON pledges.project_id = projects.id 
JOIN categories ON categories.id = projects.category_id
WHERE categories.category_name = "music";

-- Select the category names and the sum total of the pledge amounts of all the pledges in the book category.

SELECT projects.category_id, SUM(pledges.amount) AS 'total pledge', categories.category_name FROM projects
JOIN pledges ON pledges.project_id = projects.id 
JOIN categories ON categories.id = projects.category_id
WHERE categories.category_name = "books";

