# Query 1: Top 10 kategori produk berdasarkan total revenue
run_query('''
SELECT product_category_name,
       COUNT(DISTINCT order_id) as total_orders,
       SUM(total_item_value) as total_revenue
FROM sales
GROUP BY product_category_name
ORDER BY total_revenue DESC
LIMIT 10;
''')

#QUERY 2 : Rata-rata order per jam - cari jam paling "profitable" bukan cuman paling ramai
run_query('''
SELECT purchase_hour,
COUNT(DISTINCT order_id) as total_orders,
ROUND(AVG(total_item_value), 2) as avg_order_value,
ROUND(SUM(total_item_value), 2) as total_revenue
FROM sales
GROUP BY purchase_hour
ORDER BY total_revenue DESC
''')

#Query 3 : Customer segmentation sederhana (RFM - Frequency & Monetary)
run_query('''
select customer_unique_id,
       COUNT(DISTINCT order_id) as frequency,
       ROUND(SUM(total_item_value), 2) as monetary,
       case
          WHEN COUNT(DISTINCT order_id) > 1 THEN 'Repeat Buyer'
          ELSE 'One Time Buyer'
       END as customer_type
from sales
group by customer_unique_id
order by monetary desc
limit 20
''')

# Query 4 : Perbandingan Repeat Buyer vs One Time Buyer (agregat)
run_query('''
with customer_summery as (
  select customer_unique_id,
  count(distinct order_id) as frequency,
  sum(total_item_value) as monetary
  from sales
  group by customer_unique_id
)
select
  case when frequency > 1 then 'Repeat Buyer'
  else 'One Time Buyer'
  end as customer_type,
  count(*) as jumlah_customer,
  round(avg(monetary), 2) as avg_spanding
from customer_summery
group by customer_type
''')

#Query 5 : Metode Pembayaran vs rata-rata nilai order
run_query('''
select payment_type,
    count(*) as total_transaksi,
    round(avg(total_item_value), 2) as avg_order_value
from sales
where payment_type is not null
group by payment_type
order by total_transaksi desc
''')
