-- Select the titles of all projects and their pledge amounts.

SELECT projects.title, SUM(pledges.amount) AS 'total project pledge amount' FROM projects
JOIN pledges ON projects.id = pledges.project_id
GROUP BY projects.title;

-- Select the user name, age, and pledge amount for all pledges.

SELECT pledges.id AS 'pledge id', users.name, users.age, pledges.amount FROM pledges
JOIN users ON pledges.user_id = users.id;

-- Select the titles of all projects that have met their funding goal.

SELECT projects.title, SUM(pledges.amount) FROM projects
JOIN pledges ON projects.id = pledges.project_id
WHERE pledges.amount >= projects.funding_goal;

-- Select user names and amounts of all pledges. Order them by the amount.;

SELECT pledges.user_id, users.name, SUM(pledges.amount) as 'total pledge' FROM pledges
INNER JOIN users ON pledges.user_id = users.id
GROUP BY pledges.user_id
ORDER BY pledges.amount DESC
;

-- Select the category names, and pledge amounts of all pledges in the music category.

SELECT pledges.*, categories.category_name FROM projects
JOIN pledges ON pledges.project_id = projects.id 
JOIN categories ON categories.id = projects.category_id
WHERE categories.category_name = "music";

-- Select the category names and the sum total of the pledge amounts of all the pledges in the book category.

SELECT SUM(pledges.amount) AS 'total pledge', categories.category_name FROM projects
JOIN pledges ON pledges.project_id = projects.id 
JOIN categories ON categories.id = projects.category_id
WHERE categories.category_name = "books";

