-- =====================================================================
-- DATA HYGIENE CHECKS
-- Tables: core.main (orders), core.country (country -> region lookup)
-- Purpose: check each column for duplicates, nulls, and values
--          (Parts 1-4), then answer business questions (Part 5)
-- =====================================================================


-- =====================================================================
-- PART 1: DUPLICATES
-- Each query lists values that appear more than once in a column.
-- Duplicates matter most in ID columns; they are expected in
-- categorical and date columns.
-- =====================================================================

-- ---------------------------------------------------------------------
-- Q1. Are there duplicate user_ids? (expected if users place multiple orders)
-- ---------------------------------------------------------------------

select user_id,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q2. Are there duplicate order_ids? (each order should appear once)
-- ---------------------------------------------------------------------

select order_id,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q3. Are there duplicate purchase_ts values?
-- ---------------------------------------------------------------------

select purchase_ts,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q4. Are there duplicate ship_ts values?
-- ---------------------------------------------------------------------

select ship_ts,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q5. Are there duplicate delivery_ts values?
-- ---------------------------------------------------------------------

select delivery_ts,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q6. Are there duplicate refund_ts values?
-- ---------------------------------------------------------------------

select refund_ts,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q7. Are there duplicate product_names?
-- ---------------------------------------------------------------------

select product_name,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q8. Are there duplicate product_ids?
-- ---------------------------------------------------------------------

select product_id,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q9. Are there duplicate usd_price values?
-- ---------------------------------------------------------------------

select usd_price,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q10. Are there duplicate local_price values?
-- ---------------------------------------------------------------------

select local_price,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q11. Are there duplicate currency values?
-- ---------------------------------------------------------------------

select currency,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q12. Are there duplicate purchase_platform values?
-- ---------------------------------------------------------------------

select purchase_platform,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q13. Are there duplicate marketing_channel values?
-- ---------------------------------------------------------------------

select marketing_channel,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q14. Are there duplicate account_creation_method values?
-- ---------------------------------------------------------------------

select account_creation_method,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q15. Are there duplicate country_code values?
-- ---------------------------------------------------------------------

select country_code,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q16. Are there duplicate loyalty_program values?
-- ---------------------------------------------------------------------

select loyalty_program,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q17. Are there duplicate created_on values?
-- ---------------------------------------------------------------------

select created_on,
  count(*) as row_count
from core.main
group by 1
having count(*) > 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q18. Are there exact duplicate rows (every column identical)?
-- ---------------------------------------------------------------------

select user_id, order_id, purchase_ts, ship_ts, delivery_ts, refund_ts,
  product_name, product_id, usd_price, local_price, currency,
  purchase_platform, marketing_channel, account_creation_method,
  country_code, loyalty_program, created_on,
  count(*) as row_count
from core.main
group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17
having count(*) > 1;


-- =====================================================================
-- PART 2: NULLS
-- =====================================================================

-- ---------------------------------------------------------------------
-- Q19. How many nulls does each column have?
-- ---------------------------------------------------------------------

select count(*) as total_rows,
  countif(user_id is null) as user_id_nulls,
  countif(order_id is null) as order_id_nulls,
  countif(purchase_ts is null) as purchase_ts_nulls,
  countif(ship_ts is null) as ship_ts_nulls,
  countif(delivery_ts is null) as delivery_ts_nulls,
  countif(refund_ts is null) as refund_ts_nulls,
  countif(product_name is null) as product_name_nulls,
  countif(product_id is null) as product_id_nulls,
  countif(usd_price is null) as usd_price_nulls,
  countif(local_price is null) as local_price_nulls,
  countif(currency is null) as currency_nulls,
  countif(purchase_platform is null) as purchase_platform_nulls,
  countif(marketing_channel is null) as marketing_channel_nulls,
  countif(account_creation_method is null) as account_creation_method_nulls,
  countif(country_code is null) as country_code_nulls,
  countif(loyalty_program is null) as loyalty_program_nulls,
  countif(created_on is null) as created_on_nulls
from core.main;


-- ---------------------------------------------------------------------
-- Q20. Do any text columns have blank values ('') that act like hidden nulls?
-- ---------------------------------------------------------------------

select countif(trim(user_id) = '') as user_id_blanks,
  countif(trim(order_id) = '') as order_id_blanks,
  countif(trim(purchase_ts) = '') as purchase_ts_blanks,
  countif(trim(product_name) = '') as product_name_blanks,
  countif(trim(product_id) = '') as product_id_blanks,
  countif(trim(currency) = '') as currency_blanks,
  countif(trim(purchase_platform) = '') as purchase_platform_blanks,
  countif(trim(marketing_channel) = '') as marketing_channel_blanks,
  countif(trim(account_creation_method) = '') as account_creation_method_blanks,
  countif(trim(country_code) = '') as country_code_blanks
from core.main;


-- =====================================================================
-- PART 3: VALUES
-- =====================================================================

-- ---------------------------------------------------------------------
-- Q21. What values appear in currency, and how often?
-- ---------------------------------------------------------------------

select currency,
  count(*) as row_count
from core.main
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q22. What values appear in purchase_platform, and how often?
-- ---------------------------------------------------------------------

select purchase_platform,
  count(*) as row_count
from core.main
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q23. What values appear in marketing_channel, and how often?
-- ---------------------------------------------------------------------

select marketing_channel,
  count(*) as row_count
from core.main
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q24. What values appear in account_creation_method, and how often?
-- ---------------------------------------------------------------------

select account_creation_method,
  count(*) as row_count
from core.main
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q25. What values appear in country_code, and how often? (should be 2-letter codes)
-- ---------------------------------------------------------------------

select country_code,
  count(*) as row_count
from core.main
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q26. What values appear in loyalty_program? (expected: 0 and 1)
-- ---------------------------------------------------------------------

select loyalty_program,
  count(*) as row_count
from core.main
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q27. What product names exist, and how often are they ordered?
--      (watch for spelling or capitalization variants of the same product)
-- ---------------------------------------------------------------------

select product_name,
  count(*) as row_count
from core.main
group by 1
order by 1;


-- ---------------------------------------------------------------------
-- Q28. Does each product_id have only one product_name?
-- ---------------------------------------------------------------------

select product_id,
  count(distinct product_name) as name_count
from core.main
group by 1
having count(distinct product_name) > 1;


-- ---------------------------------------------------------------------
-- Q29. What is the range of usd_price? Any zeros or negatives?
-- ---------------------------------------------------------------------

select min(usd_price) as min_price,
  max(usd_price) as max_price,
  round(avg(usd_price), 2) as avg_price,
  countif(usd_price = 0) as zero_prices,
  countif(usd_price < 0) as negative_prices
from core.main;


-- ---------------------------------------------------------------------
-- Q30. What is the range of local_price? Any zeros or negatives?
-- ---------------------------------------------------------------------

select min(local_price) as min_price,
  max(local_price) as max_price,
  round(avg(local_price), 2) as avg_price,
  countif(local_price = 0) as zero_prices,
  countif(local_price < 0) as negative_prices
from core.main;


-- ---------------------------------------------------------------------
-- Q31. When currency is USD, do usd_price and local_price match?
-- ---------------------------------------------------------------------

select count(*) as usd_rows,
  countif(usd_price != local_price) as price_mismatches
from core.main
where currency = 'USD';


-- ---------------------------------------------------------------------
-- Q32. What does purchase_ts look like? (it is stored as STRING, not DATE)
-- ---------------------------------------------------------------------

select purchase_ts
from core.main
limit 20;


-- ---------------------------------------------------------------------
-- Q33. Can every purchase_ts be converted to a date?
--      If unparseable > 0, run #32 to see the format and adjust.
-- ---------------------------------------------------------------------

select countif(purchase_ts is not null) as non_null,
  countif(purchase_ts is not null and safe_cast(purchase_ts as date) is null) as unparseable
from core.main;


-- ---------------------------------------------------------------------
-- Q34. What is the date range of each date column? Any dates in the future?
-- ---------------------------------------------------------------------

select min(safe_cast(purchase_ts as date)) as min_purchase,
  max(safe_cast(purchase_ts as date)) as max_purchase,
  min(ship_ts) as min_ship,
  max(ship_ts) as max_ship,
  min(delivery_ts) as min_delivery,
  max(delivery_ts) as max_delivery,
  min(refund_ts) as min_refund,
  max(refund_ts) as max_refund,
  min(created_on) as min_created,
  max(created_on) as max_created
from core.main;


-- ---------------------------------------------------------------------
-- Q35. Do the order dates happen in a logical sequence? (every count should be 0)
-- ---------------------------------------------------------------------

select countif(created_on > safe_cast(purchase_ts as date)) as created_after_purchase,
  countif(ship_ts < safe_cast(purchase_ts as date)) as shipped_before_purchase,
  countif(delivery_ts < ship_ts) as delivered_before_shipped,
  countif(refund_ts < safe_cast(purchase_ts as date)) as refunded_before_purchase,
  countif(delivery_ts is not null and ship_ts is null) as delivered_but_never_shipped
from core.main;


-- =====================================================================
-- PART 4: COUNTRY LOOKUP
-- Note: columns loaded as string_field_0 / string_field_1, which means
-- BigQuery found no header row. Assumes string_field_0 = country code
-- and string_field_1 = region.
-- =====================================================================

-- ---------------------------------------------------------------------
-- Q36. What does the lookup table look like? (check whether the header ended up as a data row)
-- ---------------------------------------------------------------------

select *
from core.country
order by 1;


-- ---------------------------------------------------------------------
-- Q37. Does each country code appear only once?
-- ---------------------------------------------------------------------

select string_field_0 as country_code,
  count(*) as row_count
from core.country
group by 1
having count(*) > 1;


-- ---------------------------------------------------------------------
-- Q38. Are there nulls in the lookup table?
-- ---------------------------------------------------------------------

select countif(string_field_0 is null) as country_code_nulls,
  countif(string_field_1 is null) as region_nulls
from core.country;


-- ---------------------------------------------------------------------
-- Q39. What regions exist, and how many countries are in each?
-- ---------------------------------------------------------------------

select string_field_1 as region,
  count(*) as country_count
from core.country
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q40. Which order country codes have no match in the lookup? (these get a null region after the join)
-- ---------------------------------------------------------------------

select main.country_code,
  count(*) as row_count
from core.main
left join core.country on country.string_field_0 = main.country_code
where country.string_field_0 is null
group by 1
order by 2 desc;


-- =====================================================================
-- PART 5: BUSINESS QUESTIONS
-- Tables: core.orders, core.customers, core.order_status, core.geo_lookup
-- =====================================================================

-- ---------------------------------------------------------------------
-- Q41a. What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years?
-- ---------------------------------------------------------------------

select date_trunc(orders.purchase_ts, quarter) as purchase_quarter,
  count(distinct orders.id) as order_counts,
  sum(usd_price) as sales,
  avg(usd_price) as aov
from core.orders
left join core.customers on customers.id = orders.customer_id
left join core.geo_lookup on geo_lookup.country_code = customers.country_code
where lower(orders.product_name) like '%macbook%'
  and region = 'NA'
group by 1
order by 1 desc;


-- ---------------------------------------------------------------------
-- Q41b. What is the average quarterly order count and total sales for Macbooks sold in North America?
--      (i.e. "For North America Macbooks, average of X units sold per quarter and Y in dollar sales per quarter")
-- ---------------------------------------------------------------------

with quarterly as (
  select date_trunc(orders.purchase_ts, quarter) as purchase_quarter,
    count(distinct orders.id) as order_counts,
    sum(usd_price) as sales,
    avg(usd_price) as aov
  from core.orders
  left join core.customers on customers.id = orders.customer_id
  left join core.geo_lookup on geo_lookup.country_code = customers.country_code
  where lower(orders.product_name) like '%macbook%'
    and region = 'NA'
  group by 1
  order by 1 desc)

select avg(order_counts) as average_order_per_quarter,
  avg(sales) as average_sales_per_quarter
from quarterly;


-- ---------------------------------------------------------------------
-- Q42. For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the highest average time to deliver?
--      (2022 and website) or (mobile in any year)
-- ---------------------------------------------------------------------

select geo_lookup.region,
  avg(date_diff(order_status.delivery_ts, order_status.purchase_ts, day)) as avg_time_to_deliver
from core.order_status
left join core.orders on orders.id = order_status.order_id
left join core.customers on orders.customer_id = customers.id
left join core.geo_lookup on customers.country_code = geo_lookup.country_code
where (extract(year from orders.purchase_ts) = 2022 and orders.purchase_platform = 'website')
  or orders.purchase_platform = 'mobile app'
group by 1
order by 2 desc;


-- ---------------------------------------------------------------------
-- Q43a. What was the refund rate and refund count for each product overall?
-- ---------------------------------------------------------------------

with refund_table as (
  select *,
    case when order_status.refund_ts is not null then 1 else null end as is_refund
  from core.orders
  left join core.order_status on order_status.order_id = orders.id)

select refund_table.product_name,
  sum(usd_price) / sum(is_refund) as refund_rate,
  sum(is_refund) as refund_count
from refund_table
group by 1
order by 3 desc;


-- ---------------------------------------------------------------------
-- Q43b. Alternate version with product name typo fix
-- ---------------------------------------------------------------------

select case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
  sum(case when refund_ts is not null then 1 else 0 end) as refunds,
  avg(case when refund_ts is not null then 1 else 0 end) as refund_rate
from core.orders
left join core.order_status on orders.id = order_status.order_id
group by 1
order by 3 desc;


-- ---------------------------------------------------------------------
-- Q43c. What was the refund rate and refund count for each product per year?
-- ---------------------------------------------------------------------

select case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
  extract(year from orders.purchase_ts) as year,
  sum(case when refund_ts is not null then 1 else 0 end) as refund_count,
  avg(case when refund_ts is not null then 1 else 0 end) as refund_rate
from core.orders
left join core.order_status on orders.id = order_status.order_id
group by 1, 2
order by 1, 2 desc;


-- ---------------------------------------------------------------------
-- Q44. Within each region, what is the most popular product?
-- ---------------------------------------------------------------------

with sales_by_product as (
  select region,
    case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
    count(distinct orders.id) as total_orders
  from core.orders
  left join core.customers on orders.customer_id = customers.id
  left join core.geo_lookup on geo_lookup.country_code = customers.country_code
  group by 1, 2),

ranked_orders as (
  select *,
    row_number() over (partition by region order by total_orders desc) as order_ranking
  from sales_by_product
  order by 4 asc)

select *
from ranked_orders
where order_ranking = 1;


-- ---------------------------------------------------------------------
-- Q45. How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers?
-- ---------------------------------------------------------------------

select customers.loyalty_program,
  orders.purchase_platform,
  avg(date_diff(orders.purchase_ts, customers.created_on, day)) as days_to_purchase
from core.customers
left join core.orders on customers.id = orders.customer_id
group by 1, 2;
