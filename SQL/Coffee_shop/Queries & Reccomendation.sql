use coffee_shop;
-- Q1 .How many people in each city are estimated to consume coffee, given that 35% of the population does?

select city_name , ROUND((population*0.35/1000000),2) AS Consumers_in_millions , city_rank from city;


-- Q2 .Total Revenue from Coffee Sales
select c.city_name , sum(s.total) As total_revenue from sales s
join customers cs on cs.customer_id=s.customer_id
join city c on cs.city_id=c.city_id
group by c.city_name;

-- Q3. What is the total revenue generated from coffee sales across all cities in the last quarter of 2023?

select c.city_name , sum(s.total) As total_revenue_qtr from sales s
join customers cs on cs.customer_id=s.customer_id
join city c on cs.city_id=c.city_id
where extract(year from s.sale_date)=2023 and extract(quarter from s.sale_date)=4
group by c.city_name ;

--  Q.3 Sales Count for Each Product
select p.product_name , sum(s.total) as Total_each_product from sales s
join products p on p.product_id=s.product_id
group by 1 
order by 2 desc;

--  Q.3 How many units of each coffee product have been sold?
select p.product_name , count(s.product_id) as Total_count from sales s
join products p on p.product_id=s.product_id
group by 1 
order by 2 desc;

-- Q.4 Average Sales Amount per City
select c.city_name , sum(s.total) as Total_each_product from sales s
join customers cs on cs.customer_id=s.customer_id
join city c on cs.city_id=c.city_id
group by 1 
order by 2 desc;

-- Q5. What is the average sales amount per customer in each city?
select c.city_name , sum(s.total) as Total_Sales , count(distinct cs.customer_id) as city_customers , round(sum(s.total)/count(distinct cs.customer_id) ,2) as Sale_per_customer from sales s
join customers cs on cs.customer_id=s.customer_id
join city c on cs.city_id=c.city_id
group by 1 
order by 4 desc;


-- Q.5 City Population and Coffee Consumers (35%) Provide a list of cities along with their populations and estimated coffee consumers. return city_name, total current cx, estimated coffee consumers (35%)
select c.city_name , ROUND((c.population*0.35/1000000),2) AS Estimated_Consumers_in_millions , count(distinct cs.customer_id) as Current_city_customers from city c
join customers cs on cs.city_id=c.city_id 
group by 1 , 2;

-- Q6 Top Selling Products by City , What are the top 3 selling products in each city based on sales volume?
select * from 
(select c.city_name , p.product_name , count(s.product_id) as total_sales  , dense_rank()over(partition by c.city_name order by count(s.product_id) desc) as sales_rank from sales s
join products p on p.product_id=s.product_id
join customers cs on cs.customer_id=s.customer_id
join city c on cs.city_id=c.city_id
group by 1 , 2) 
as t1 
where sales_rank <=3 ;

-- Q.7 Market Potential Analysis Identifing top 3 city based on highest sales, return city name, total sale, total rent, total customers, estimated coffee consumer
select c.city_name , sum(s.total) as revenue , sum(c.estimated_rent) as rent , count(distinct cs.customer_id) as customers , ROUND((c.population*0.35/1000000),2) AS Consumers_in_millions from sales s
join products p on p.product_id=s.product_id
join customers cs on cs.customer_id=s.customer_id
join city c on cs.city_id=c.city_id
group by 1 , 5
order by 2 desc;

-- Q.8 Average Sale vs Rent , Finding  each city and their average sale per customer and avg rent per customer
with city_summary as (
select c.city_name , c.estimated_rent ,  COUNT(DISTINCT s.customer_id) AS total_cs, SUM(s.total) AS total_sales from sales s
join products p on p.product_id=s.product_id
join customers cs on cs.customer_id=s.customer_id
join city c on cs.city_id=c.city_id
group by 1 ,2)
select city_name , total_cs ,ROUND(total_sales / total_cs, 2) AS Avg_Sale_per_Customer,ROUND(estimated_rent / total_cs, 2) AS Avg_Rent_per_Customer from city_summary
ORDER BY 2, 3 DESC;


-- Recommended City for New Store
-- 1.Delhi: Prioritize expansion as it has the largest estimated consumer base (10.85M) while serving only 68 customers, indicating significant untapped market potential.
-- 2.Mumbai: Open a new store due to its 7.14M consumers and only 27 customers, suggesting low market penetration despite a large market.
-- 3.Kolkata: Consider expansion because it has 5.22M estimated consumers but only 28 customers, offering strong growth opportunities.