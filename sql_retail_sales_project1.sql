select * from database1.sales;

select count(transactions_id) from database1.sales;

# 1. Write a SQL query to retrieve all columns for sales made on '2022-11-05' 

# --- Solution ---

select * from database1.sales where sale_date = '2022-11-05';

# 2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:

# --- Solution ---

select * from database1.sales where category='Clothing' AND quantity>=4  AND sale_date LIKE '2022-11-%'; 

# 3. Write a SQL query to calculate the total sales (total_sale) for each category :

# --- Solution ---
select category,sum(total_sale) as total_sales from database1.sales group by category;

# 4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:

# -- Solution ---

select round(avg(age),0) as average_age from database1.sales where category = 'Beauty';

# 5. Write a SQL query to find all transactions where the total_sale is greater than 1000 :

# --- Solution ---

select * from database1.sales where total_sale > 1000;

# 6 . Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category :

# --- Solution ---

select gender,category,count(*) as total_transactions from database1.sales group by gender,category order by category asc;

# 7. Write a SQL query to find the top 5 customers based on the highest total sales :

# --- Solution ---
select customer_id,sum(total_sale) as total from database1.sales group by customer_id order by total desc limit 5;

# 8. Write a SQL query to find the number of unique customers who purchased items from each category :

# --- Solution ---

select category,count( distinct customer_id) from database1.sales group by category;