-- CREATE schema assignment
CREATE SCHEMA assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

select * from assignment.sales;

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select * from assignment.customers c;

-- 2. Write a query to select the total number of products from the `Products` table.
select count(product_id)
from assignment.products p;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price 
from assignment.products p 
where price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.
select avg(price) as average_price_of_all_products
from assignment.products p;

-- 5. Write a query to find the total sales amount from the `Sales` table.
select sum(total_amount) as total_sales_amount
from assignment.sales s;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct membership_status as distinct_membership_status
from assignment.customers c; 

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select first_name, last_name, concat(first_name, ' ', last_name) as full_name
from assignment.customers c;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select product_id, product_name, category, price, supplier, stock_quantity
from assignment.products p 
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select max(price) as highest_price
from assignment.products p;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select product_id, count(sale_id) as sale_count_each_product
from assignment.sales s
group by product_id
order by product_id asc;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_id, sum(quantity_sold) as total_quantity_each_product
from assignment.sales s
group by product_id
order by product_id asc;

-- 12. Write a query to find the lowest price of products in the `Products` table.


-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select sale_id, customer_id, product_id, total_amount
from assignment.sales s
where total_amount >1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
select p.product_id, p.product_name, s.total_amount
from assignment.products p 
inner join 
assignment.sales s on p.product_id = s.product_id;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select c.first_name, c.last_name, s.customer_id, total_amount
from assignment.sales s 
inner join assignment.customers c 
on c.customer_id = s.customer_id;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select c.first_name, c.last_name, p.product_name, total_amount
from assignment.sales s 
inner join assignment.customers c 
on c.customer_id = s.customer_id 
inner join assignment.products p 
on p.product_id = s.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select c.customer_id, c.first_name, c.last_name, c.membership_status, m.customer_id, m.first_name, m.last_name
from assignment.customers c 
join assignment.customers m
on c.membership_status = m.membership_status
and c.customer_id < m.customer_id 
order by c.membership_status, c.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select p.product_id, p.product_name, count(s.sale_id) as total_number_of_sales_each_product
from assignment.products p
inner join assignment.sales s
	on p.product_id = s.product_id
group by p.product_id, p.product_name 
order by p.product_id asc;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select product_id, product_name, stock_quantity
from assignment.products p 
where p.stock_quantity <10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
select s.sale_id, s.product_id, p.product_name, s.quantity_sold
from assignment.sales s 
inner join assignment.products p
	on s.product_id = p.product_id 
where s.quantity_sold > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select c.customer_id, c.first_name, c.last_name, p.product_id, p.product_name, s.sale_id
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
where p.product_name = 'Electronics'
or p.product_name = 'Appliances';

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select p.product_name, sum(s.total_amount) as total_sales_amount_per_product
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
group by p.product_name, p.product_id;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select c.first_name, c.last_name, s.sale_date
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
where s.sale_date >= '2023-01-01'
and s.sale_date < '2024-01-01';

-- 24. Write a query to find the customers with the highest total sales in 2023.
select c.first_name, c.last_name, s.total_amount, s.sale_date
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
where s.sale_date >= '2023-01-01'
and s.sale_date < '2024-01-01'
order by s.total_amount desc;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select max(s.total_amount) as most_expensive_product_sold
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select count(customer_id) as count_of_customers_purchase_over_500
from assignment.sales s 
where s.total_amount > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select count(s.customer_id) as total_number_of_sales_made_by_gold_customers
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
inner join assignment.products p 
	on s.product_id = p.product_id 
where c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select i.product_id, p.product_name, i.stock_quantity 
from assignment.inventory i 
right join assignment.products p 
	on i.product_id = p.product_id 
where i.stock_quantity <10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select s.customer_id, c.first_name, c.last_name, sum(s.quantity_sold) as total_quantity_purchased
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = s.customer_id 
group by s.customer_id, c.first_name, c.last_name
having sum(s.quantity_sold) > 5
order by total_quantity_purchased desc;

-- 30. Write a query to find the average quantity sold per product.
select p.product_name, avg(s.quantity_sold) as average_number_sold
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
group by p.product_name;

-- 31. Write a query to find the number of sales made in the month of December 2023.
select count(sale_id) as sales_in_Dec
from assignment.sales s 
where s.sale_date >= '2023-12-01'
and s.sale_date < '2024-01-01';

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select sum(s.total_amount) as total_amount_spent_Dec,
c.first_name,
c.last_name,
s.customer_id,
s.sale_date
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
where s.sale_date >= '2023-01-01'
and s.sale_date < '2024-01-01'
group by c.first_name, c.last_name, s.customer_id, s.sale_date     
order by s.customer_id desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select product_id, stock_quantity
from assignment.inventory i 
where stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select sum(s.total_amount) as total_product_sale,
s.product_id,
p.product_name 
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
group by s.product_id, p.product_name 
order by total_product_sale asc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select 	c.first_name,
		c.last_name,
		s.sale_date
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
where s.sale_date - c.registration_date < 7;

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
select 	p.product_name,
		s.total_amount
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
where s.total_amount between 100 and 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
select 	c.customer_id,
		c.first_name,
		c.last_name,
		count(s.sale_id) as most_frequent_buyer
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
group by c.customer_id, c.first_name, c.last_name 
order by most_frequent_buyer desc 
limit 1;

-- 38. Write a query to find the total quantity of products sold per customer.
select 	c.customer_id,
		c.first_name,
		c.last_name,
		sum(s.quantity_sold) as quantity_sold_per_customer
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
group by c.customer_id, c.first_name, c.last_name
order by quantity_sold_per_customer desc;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
select 	product_name,
		stock_quantity 
from assignment.products p 
where p.stock_quantity = (select max(stock_quantity) from assignment.products p)
Union
select 	product_name,
		stock_quantity 
from assignment.products p 
where p.stock_quantity = (select min(stock_quantity) from assignment.products p);

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select 	
	sum(total_amount) as phone_total_sale
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
where p.product_name = 'Phone';

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select 	p.product_name,
		c.first_name,
		c.last_name,
		c.membership_status,
		sum(s.total_amount)
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
inner join assignment.products p 
	on s.product_id = p.product_id 
where c.membership_status = 'Gold'
group by p.product_name, c.first_name, c.last_name, c.membership_status;
		
-- 42. Write a query to find the total sales of products by category.
select 	
		p.category,
		sum(s.total_amount) as total_sales_by_category
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
group by p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select 	p.product_name,
		extract(year from s.sale_date) as sale_year,
		extract(month from s.sale_date) as sale_month,
		sum(s.total_amount)
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
group by p.product_name, extract(year from s.sale_date), extract(month from s.sale_date)
order by sale_year;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select distinct	s.product_id,
		i.stock_quantity
from assignment.sales s 
inner join assignment.inventory i 
	on s.product_id = i.product_id 
where i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select 	s.customer_id, 
		c.first_name,
		c.last_name,
		s.total_amount
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
order by total_amount desc
limit 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
Select count(distinct product_id) AS unique_products_sold
from assignment.sales
where sale_date >= '2023-01-01'
and sale_date < '2024-01-01';

-- 47. Write a query to find the products that have not been sold in the last 6 months.
select 	p.product_id,
    	p.product_name
from assignment.products p
where p.product_id not in (
    select distinct product_id
    from assignment.sales
    where sale_date >= current_date - interval '6 months'
)
ORDER BY p.product_id;

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select 	s.product_id,
		p.product_name,
		sum(s.quantity_sold) as total_quantity_sold
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
where s.total_amount between 200 and 800
group by s.product_id, p.product_name;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select max(s.total_amount) as total_amount_spent_Dec,
c.first_name,
c.last_name,
s.customer_id
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
where s.sale_date >= '2023-01-01'
and s.sale_date < '2024-01-01'
group by c.first_name, c.last_name, s.customer_id    
order by total_amount_spent_dec desc
limit 1;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
select 	s.product_id,
		p.product_name,
		s.total_amount,
		sum(s.quantity_sold) as total_quantity_sold
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
where s.total_amount >200
group by s.product_id, p.product_name, s.total_amount
having sum(s.quantity_sold) > 100;

-- =====================================================
-- PART 2
-- =====================================================
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?
select 	c.customer_id,
		c.first_name,
		c.last_name,
		sum(s.total_amount) as total_spent
from assignment.customers c 
inner join assignment.sales s 
	on c.customer_id = s.customer_id 
group by c.customer_id, c.first_name, c.last_name 
having sum(s.total_amount) >	(
								 select avg(customer_total)
								 from	(
								 		 select sum(total_amount) as customer_total
								 		 from assignment.sales 
								 		 group by customer_id 
								 		) as spending_per_customer
								 )
order by total_spent desc;
				 

-- 52. Which products are priced higher than the average price of all products?
select 	product_id,
		product_name, 
		price 
from assignment.products p 
where price >	(
				 select avg(price)
				 from assignment.products
				)
order by price desc;
-- 53. Which customers have never made a purchase?
select 	c.customer_id,
		c.first_name,
		c.last_name
from assignment.customers c
where c.customer_id not in (
							select distinct s.customer_id 
							from assignment.sales s
							)
order by c.customer_id;

-- 54. Which products have never been sold?
select 	p.product_id,
		p.product_name
from assignment.products p 
where p.product_id not in	(
							 select distinct s.product_id
							 from assignment.sales s 
							 )
order by p.product_id;

-- 55. Which customer made the single most expensive purchase?
select 	c.customer_id,
		c.first_name,
		c.last_name,
		s.total_amount
from assignment.customers c 
inner join assignment.sales s
	on c.customer_id = s.customer_id 
where s.total_amount =	(
						 select max(total_amount)
						 from assignment.sales
						);

-- 56. Which products have total sales greater than the average total sales across all products?
select	p.product_id,
		p.product_name,
		sum(s.total_amount) as total_sales
from assignment.sales s
inner join assignment.products p 
	on p.product_id = s.product_id 
group by p.product_id, p.product_name 
having sum(s.total_amount) >	(
select avg(product_totals)
from 	(
		 select sum(s.total_amount) as product_totals
		 from assignment.sales s 
		 group by s.product_id) as sale_per_product)
order by total_sales desc;

-- 57. Which customers registered earlier than the average registration date?
select	c.customer_id,
    	c.first_name,
    	c.last_name,
    	c.registration_date
from assignment.customers c
where extract(epoch from c.registration_date) <	(
    											 select avg(extract(epoch from registration_date))
    											 from assignment.customers
												)
order by c.registration_date asc;
-- 58. Which products have a price higher than the average price within their own category?
select	product_id,
		product_name,
		category,
		price 
from assignment.products 
where price >	(
				 select avg(price)
				 from assignment.products 
				 where category = category
				)
order by category, price desc;

-- 59. Which customers have spent more than the customer with ID = 10?
select 	c.customer_id, 
		c.first_name, 
		c.last_name,
		s.total_amount
from assignment.sales s
inner join assignment.customers c 
	on s.customer_id = c.customer_id
where s.total_amount >	(
						 select s.total_amount
						 from assignment.sales s
						 where s.customer_id = 10
						 )
order by s.total_amount desc;
		
-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select	p.product_id,
		p.product_name,
		s.quantity_sold
from assignment.sales s 
inner join assignment.products p 
	on s.product_id = p.product_id 
where s.quantity_sold >	(
select	avg(s.quantity_sold)
from assignment.sales s)
order by p.product_id;
		
		
-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with customer_spending as	(
							 select	c.customer_id,
							 		c.first_name,
							 		c.last_name,
							 		sum(s.total_amount) as total_spent
							 from assignment.customers c 
							 inner join assignment.sales s 
							 	on c.customer_id = s.customer_id
							 group by c.customer_id, c.first_name, c.last_name
							 )
select	customer_id,
		first_name,
		last_name,
		total_spent
from customer_spending
order by total_spent 
limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with products_sold as	(select	p.product_id,
								p.product_name,
								sum(quantity_sold) as sold_quantity
						 from assignment.products p  
						 inner join assignment.sales s 
						 	on p.product_id = s.product_id 
						 group by p.product_id, p.product_name 
						)
select	product_id,
		product_name
from products_sold 
order by sold_quantity desc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with total_sales_by_product_category as	(
										 select	p.category,
										 		sum(s.total_amount) as total_revenue
										 from assignment.products p 
										 inner join assignment.sales s
										 	on p.product_id = s.product_id 
										 group by p.category
										) 
select 	category,
		total_revenue 
from total_sales_by_product_category
order by total_revenue
limit 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with customer_sales_count as	(
								 select c.customer_id,
								 		c.first_name,
								 		c.last_name,
								 		count(s.customer_id) as customer_count
								 from assignment.sales s
								 inner join assignment.customers c 
								 	on c.customer_id = s.customer_id 
								 group by c.customer_id, c.first_name, c.last_name
								)
select	customer_id,
		first_name,
		last_name
from customer_sales_count 
where customer_count > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with total_quantity_by_product_sold as	(
										 select sum(s.quantity_sold) as total_products_sold,
										 		p.product_id,
										 		p.product_name 
										 from assignment.sales s
										 inner join assignment.products p 
										 	on p.product_id = s.product_id
										 group by p.product_id, p.product_name
										)
select 	product_id,
		product_name,
		total_products_sold
from	(
		 select *,
		 		avg(total_products_sold) over () as avg_total_sold
		 from total_quantity_by_product_sold
		)
where total_products_sold > avg_total_sold 
order by total_products_sold desc;

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with customer_total_spending as	(
								 select	customer_id,
								 		sum(total_amount) as total_spent
								 from assignment.sales 
								 group by customer_id
								)
select	c.customer_id,
		c.first_name,
		c.last_name,
		t.total_spent
from assignment.customers c 
inner join customer_total_spending t
	on c.customer_id = t.customer_id
where t.total_spent >	(
						select avg(total_spent) 
						from customer_total_spending
						);

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with product_revenue as	(select	p.product_id,
								p.product_name,
						 		sum(s.total_amount) as total_spent
						 from assignment.sales s
						 inner join assignment.products p 
						 	on p.product_id = s.product_id 
						 group by p.product_id, p.product_name
						)
select	product_id,
		product_name,
		total_spent
from product_revenue 
order by total_spent desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with monthly_sales as	(select	date_trunc('month',sale_date) as month,
						 		sum(total_amount) as monthly_revenue
						 from assignment.sales
						 group by month
						)
select	month,
		monthly_revenue
from monthly_sales 
order by monthly_revenue desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with product_sale_count as	(select	p.product_id,
									p.product_name,
									count(distinct s.customer_id) as unique_customer_count
						 from assignment.sales s 
						 inner join assignment.products p 
						 	on p.product_id = s.product_id 
						 group by p.product_id, p.product_name 
							)
select	*
from product_sale_count 
where unique_customer_count > 3
order by unique_customer_count desc;
		
						
-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with total_quantity_product_sold as (
									 select	product_id,
									 		sum(quantity_sold) as quantity_sold_product
									 from assignment.sales 
									 group by product_id
									)
select * 
from total_quantity_product_sold
where quantity_sold_product  <	(select	avg(quantity_sold_product)
						 		 from total_quantity_product_sold
						 		);

-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
select	c.customer_id,
		c.first_name,
		c.last_name,
		sum(s.total_amount) as total_spent,
		rank() over (order by sum(s.total_amount) desc) as spending_rank
from assignment.sales s
inner join assignment.customers c 
	on c.customer_id = s.customer_id 
group by c.customer_id, c.first_name, c.last_name;

-- 72. Rank products based on total quantity sold.
select	p.product_id,
		p.product_name,
		sum(s.quantity_sold) as sold_quantity,
		dense_rank() over (order by sum(s.quantity_sold) desc) as quantity_rank
from assignment.sales s
inner join assignment.products p  
	on p.product_id = s.product_id
group by p.product_id, p.product_name;
		
-- 73. Identify the 3rd highest spending customer.
select 	c.customer_id,
		c.first_name,
		c.last_name,
		sum(s.total_amount),
		rank() over (order by sum(s.total_amount) desc) as spending_rank
from assignment.sales s
inner join assignment.customers c
	on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
limit 3;

-- 74. Identify the 2nd most expensive product.
with price_rank as	(
					 select	product_id,
					 		product_name,
					 		price,
					 dense_rank() over (order by price desc) as ranked_price
					 from assignment.products
					)
select * 
from price_rank 
where ranked_price = 2;

-- 75. Show the ranking of products within each category based on price.
select 	product_id,
		product_name,
		category,
		rank() over (partition by category order by price desc) as ranked_price
from assignment.products;

-- 76. Show the ranking of customers based on the number of purchases they made.
select 	c.customer_id,
		c.first_name,
		c.last_name,
		count(distinct s.customer_id) as customer_count,
		rank() over (partition by count(distinct s.customer_id) order by count(distinct s.customer_id))
from assignment.sales s
inner join assignment.customers c
	on s.customer_id = c.customer_id
group by c.customer_id, c.first_name, c.last_name;

-- 77. Show the running total of sales amounts ordered by sale_date.
select	sale_id,
		sale_date,
		sum(total_amount) as totals,
		rank() over (partition by sum(total_amount) order by sale_date)
from assignment.sales
group by sale_id, sale_date;
		

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select	sale_id,
		sale_date,
		total_amount,
		lag(total_amount) over (order by sale_date) as previous_sale_amount
from assignment.sales;

-- 79. Show the next sale amount for each sale ordered by sale_date.
select	sale_id,
		sale_date,
		total_amount,
		lead(total_amount) over (order by sale_date) as previous_sale_amount
from assignment.sales;

-- 80. Divide customers into 4 groups based on total spending.
select	customer_id,
		sum(total_amount) as total_spent,
		ntile(4) over (order by sum(total_amount) desc) as spending_quartile
from assignment.sales 
group by customer_id;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
select 	c.customer_id,
		c.first_name,
		c.last_name
from assignment.customers c 
inner join assignment.sales s 
	on c.customer_id = s.customer_id 
inner join assignment.products p 
	on p.product_id = s.product_id 
group by c.customer_id, c.first_name, c.last_name
having count(distinct p.category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
select	c.customer_id,
		c.first_name,
		c.last_name
from assignment.customers c 
inner join assignment.sales s 
	on c.customer_id = s.customer_id 
where s.sale_date - c.registration_date <= 7;

-- 83. Which products have lower stock remaining than the average stock quantity?
select	p.product_id,
		p.product_name,
		i.stock_quantity
from assignment.products p 
inner join assignment.inventory i 
	on p.product_id = i.product_id 
where i.stock_quantity <	(
							 select avg(stock_quantity)
							 from assignment.inventory
							)
order by i.stock_quantity;

-- 84. Which customers purchased the same product more than once?
select	c.customer_id,
		c.first_name,
		c.last_name,
		s.product_id,
		count(*) as purchase_count
from assignment.customers c 
inner join assignment.sales s 
	on c.customer_id = s.customer_id 
group by c.customer_id, c.first_name, c.last_name, s.product_id 
having count(*) > 1;

-- 85. Which product categories generated the highest total revenue?
select	p.category,
		sum(total_amount) as total_revenue
from assignment.products p 
inner join assignment.sales s 
	on s.product_id = p.product_id 
group by p.category 
order by total_revenue desc;

-- 86. Which products are among the top 3 most sold products?
select	product_id,
		product_name,
		total_quantity 
from	(
		 select	p.product_id,
		 		p.product_name,
		 		sum(s.quantity_sold) as total_quantity,
		 		dense_rank() over (order by sum(s.quantity_sold) desc) as rank
		 from assignment.sales s
		 inner join assignment.products p 
		 	on s.product_id = p.product_id
		 group by p.product_id, p.product_name
		) ranked
limit 3;
		
-- 87. Which customers purchased the most expensive product?
select	c.customer_id,
		c.first_name,
		c.last_name
from assignment.sales s 
inner join assignment.customers c  
	on c.customer_id = s.customer_id 
inner join assignment.products p 
	on p.product_id = s.product_id 
where p.price =	(select	max(price)
						from assignment.products
				);

-- 88. Which products were purchased by the highest number of unique customers?
select	p.product_id,
		p.product_name,
		count( distinct s.customer_id) as unique_customers
from assignment.products p
inner join assignment.sales s
	on s.customer_id = p.product_id
group by p.product_id, p.product_name
having count(distinct s.customer_id) =	(
										 select max(distinct_customers) from	(
										 										 select count(distinct customer_id) as distinct_customers
										 										 from assignment.sales 
										 										 group by product_id
										 										)
										)
order by p.product_id;

-- 89. Which customers made purchases above the average sale amount?
select	c.customer_id,
		c.first_name,
		c.last_name,
		sum(s.total_amount) as totals
from assignment.sales s 
inner join assignment.customers c 
	on s.customer_id = c.customer_id 
where s.total_amount >	(
						select avg(total_amount)
						from assignment.sales
						)
group by c.customer_id, c.first_name, c.last_name, s.total_amount 
order by s.total_amount desc;
		
-- 90. Which customers purchased more products than the average quantity purchased per customer?
select	c.customer_id,
		c.first_name,
		c.last_name,
		sum(s.quantity_sold) as total_quantity_sold
from assignment.sales s 
inner join assignment.customers c 
	on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name 
having sum(s.quantity_sold) >	(
								 select avg(total_quantity)
								 from	(
								 		 select sum(quantity_sold) as total_quantity
								 		 from assignment.sales 
								 		 group by customer_id
								 		)
								 )
order by total_quantity_sold desc;


-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
select 	customer_id,
		first_name,
		last_name,
		total_spent
from	(
		 select	c.customer_id,
		 		c.first_name,
		 		c.last_name,
		 		sum(s.total_amount) as total_spent,
		 		ntile(10) over (order by sum(s.total_amount) desc) as tenth_decile
		 from assignment.sales s
		 inner join assignment.customers c
		 	on s.customer_id = c.customer_id
		 group by c.customer_id, c.first_name, c.last_name
		)
where tenth_decile = 1; 		

-- 92. Which products contribute to the top 50% of total revenue?
with product_revenue as	(
						 select p.product_id,
						 		p.product_name,
						 		sum(s.total_amount) as revenue,
						 		sum(sum(s.total_amount)) as grand_total,
						 		sum(sum(s.total_amount)) over (order by sum(s.total_amount) desc) as running_totals
						 from assignment.sales s
						 inner join assignment.products p 
						 	on s.product_id = p.product_id 
						 group by p.product_id, p.product_name
						)
select	product_id,
		product_name,
		revenue
from product_revenue
where running_total - revenue < grand_total * 0.5;

-- 93. Which customers made purchases in consecutive months?
with customer_months as	(
						 select	customer_id,
						 		date_trunc('month', sale_date) as sale_month
						 from assignment.sales 
						),
lagged as	(
			 select	customer_id,
			 		sale_month,
			 		lag(sale_month) over (partition by customer_id order by sale_month) as prev_month
			 from customer_months 
			)
select	distinct customer_id,
		c.first_name,
		c.last_name
from lagged 1 
inner join assignment.customers c 
	on 1.customer_id = c.customer_id
where sale_month = prev_month + interval '1 month';

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
SELECT p.product_id, p.product_name,
       i.stock_quantity,
       COALESCE(SUM(s.quantity_sold), 0) AS total_sold,
       i.stock_quantity - COALESCE(SUM(s.quantity_sold), 0) AS stock_diff
FROM assignment.products p
JOIN assignment.inventory i ON p.product_id = i.product_id
LEFT JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name, i.stock_quantity
ORDER BY stock_diff DESC;

-- 95. Which customers have spending above the average spending of their membership tier?
WITH tier_avg AS (
    SELECT c.membership_status,
           AVG(s.total_amount) AS avg_tier_spending
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.membership_status
),
customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name,
           c.membership_status,
           SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.membership_status
)
SELECT cs.customer_id, cs.first_name, cs.last_name,
       cs.membership_status, cs.total_spent, ta.avg_tier_spending
FROM customer_spending cs
JOIN tier_avg ta ON cs.membership_status = ta.membership_status
WHERE cs.total_spent > ta.avg_tier_spending;

-- 96. Which products have higher sales than the average sales within their category?
WITH category_avg AS (
    SELECT p.category, AVG(s.total_amount) AS avg_cat_sales
    FROM assignment.sales s
    JOIN assignment.products p ON s.product_id = p.product_id
    GROUP BY p.category
),
product_sales AS (
    SELECT p.product_id, p.product_name, p.category,
           SUM(s.total_amount) AS total_sales
    FROM assignment.sales s
    JOIN assignment.products p ON s.product_id = p.product_id
    GROUP BY p.product_id, p.product_name, p.category
)
SELECT ps.product_id, ps.product_name, ps.category,
       ps.total_sales, ca.avg_cat_sales
FROM product_sales ps
JOIN category_avg ca ON ps.category = ca.category
WHERE ps.total_sales > ca.avg_cat_sales;

-- 97. Which customer made the largest single purchase relative to their total spending?
WITH customer_purchases AS (
    SELECT c.customer_id, c.first_name, c.last_name,
           s.sale_id,
           s.total_amount,
           SUM(s.total_amount) OVER (PARTITION BY c.customer_id) AS total_spent,
           s.total_amount / SUM(s.total_amount) OVER (PARTITION BY c.customer_id) AS ratio
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
)
SELECT customer_id, first_name, last_name, total_amount, total_spent, ratio
FROM customer_purchases
ORDER BY ratio DESC, total_amount DESC
LIMIT 1;

-- 98. Which products rank among the top 3 most sold products within each category?
WITH product_sales AS (
    SELECT p.product_id, p.product_name, p.category,
           SUM(s.quantity_sold) AS total_qty,
           DENSE_RANK() OVER (
               PARTITION BY p.category
               ORDER BY SUM(s.quantity_sold) DESC
           ) AS rnk
    FROM assignment.sales s
    JOIN assignment.products p ON s.product_id = p.product_id
    GROUP BY p.product_id, p.product_name, p.category
)
SELECT product_id, product_name, category, total_qty, rnk
FROM product_sales
WHERE rnk <= 3;

-- 99. Which customers are tied for the highest total spending?
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name,
           SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id, first_name, last_name, total_spent
FROM customer_spending
WHERE total_spent = (SELECT MAX(total_spent) FROM customer_spending);

-- 100. Which products generated sales every year present in the dataset?
WITH all_years AS (
    SELECT COUNT(DISTINCT EXTRACT(YEAR FROM sale_date)) AS yr_count
    FROM assignment.sales
),
product_years AS (
    SELECT product_id,
           COUNT(DISTINCT EXTRACT(YEAR FROM sale_date)) AS yr_count
    FROM assignment.sales
    GROUP BY product_id
)
SELECT p.product_id, p.product_name
FROM assignment.products p
JOIN product_years py ON p.product_id = py.product_id
CROSS JOIN all_years ay
WHERE py.yr_count = ay.yr_count;


