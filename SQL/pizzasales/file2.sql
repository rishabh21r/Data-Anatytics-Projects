select dayname(order_date) as week_day , count(distinct order_id) as orders_per_day from pizza_sales
group by dayname(order_date) ;

select hour(order_time) as hour_of_day , count(distinct order_id) as orders_per_day from pizza_sales
group by hour(order_time) 
order by hour(order_time);

select round(sum(total_price) ,2) as total_revenue , round(sum(total_price)*100/(Select sum(total_price) from pizza_sales) , 2) as Percentage_of_Category ,  pizza_category from pizza_sales
group by pizza_category ; 

select round(sum(total_price) ,2) as total_revenue , round(sum(total_price)*100/(Select sum(total_price) from pizza_sales) , 2) as Percentage_of_size ,  pizza_size from pizza_sales
group by pizza_size ; 

select sum(quantity) as total_quantity_sold, pizza_category , monthname(order_date) from pizza_sales
group by pizza_category and monthname(order_date);

