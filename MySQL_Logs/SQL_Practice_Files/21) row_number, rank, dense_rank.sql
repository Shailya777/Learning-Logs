select * from expenses
order by category;

# Show top 2 Expenses in Each Category:
with cte1 as
(select
	*,
    row_number() over(partition by category order by amount desc) as rn
from expenses)
select * from cte1
where rn <= 2;

with cte2 as
(select
	*,
    row_number() over(partition by category order by amount desc) as rn,
    rank() over(partition by category order by amount desc) as rnk,
    dense_rank() over(partition by category order by amount desc) as d_rnk
from expenses)
select * from cte2
where d_rnk <= 2;

select * from student_marks;
select
	*,
    row_number() over(order by marks desc) as rn,
    rank() over(order by marks desc) as rnk,
    dense_rank() over(order by marks desc) as d_rnk
from student_marks;
