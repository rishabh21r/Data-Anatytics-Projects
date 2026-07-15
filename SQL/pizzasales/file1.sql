select sum(total_price) as total_revenue from pizza_sales;
select avg(total_price) as avg_order_cost from pizza_sales;
select sum(quantity) as total_pizzas_sold from pizza_sales;
select count(distinct order_id ) as total_orders from pizza_sales;
select avg(pizza) as avg_pizza_sold from pizza_sales
where order_id is like ;
