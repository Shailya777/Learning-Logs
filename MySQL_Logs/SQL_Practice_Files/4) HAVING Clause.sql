select release_year, count(*) as count
from movies
group by release_year
order by count desc;

-- Execution Order:
-- FROM --> WHERE --> GROUP BY --> HAVING --> SELECT --> DISTINCT --> ORDER BY --> LIMIT / OFFSET

select release_year, count(*) as count
from movies
group by release_year
having count > 2
order by count desc;