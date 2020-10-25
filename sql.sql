select * from transactions where sales_amount = 0;SELECT `product_code` FROM `sales`.`transactions`;

# delete the rows with 0
delete 
from transactions
where sales_amount = 0;

# delete the rows with -1
delete 
from transactions
where sales_amount = -1;

select * from transactions where sales_amount = -1;

# check the null values
select ifnull('*',500);

select * from transactions;
# add the values of sales_amount to amt column
update transactions set amt = sales_amount;

#convert dollars to INR
update `transactions` SET `sales_amount` = sales_amount *75
where currency = 'USD';
# filter currency with usd
select sales_amount from transactions
where currency = 'USD';

select max(sales_qty) from transactions;
select * from transactions where currency='USD';
# calculate the summ of transactions of year 2020
SELECT SUM(transactions.sales_qty) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;