# ecommerce-sales-analysis
# E-commerce Sales & Marketing Performance Analysis

## Latar Belakang
Sebagai praktisi digital marketing dengan fokus di Meta Ads dan affiliate marketing e-commerce (Shopee), saya sering mengandalkan intuisi dan pola "hit and run" untuk menentukan waktu dan target campaign. Project ini dibuat untuk membuktikan pola tersebut dengan data nyata — menganalisis dataset transaksi e-commerce untuk memahami kapan, produk apa, dan segmen pelanggan mana yang paling menghasilkan value, sehingga strategi campaign bisa lebih berbasis data ketimbang asumsi.

## Business Questions
1. Kategori produk mana yang paling banyak menghasilkan revenue, bukan sekadar paling banyak terjual?
2. Jam dan hari apa yang paling optimal untuk menjalankan campaign, berdasarkan pola transaksi aktual?
3. Bagaimana perbandingan pelanggan repeat buyer vs one-time buyer, dan mana yang lebih menguntungkan?
4. Metode pembayaran apa yang paling banyak digunakan dan apakah berkorelasi dengan nilai transaksi?
5. Bagaimana trend penjualan dari bulan ke bulan sepanjang periode data?

## Dataset
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) — dataset transaksi marketplace nyata (order, produk, customer, pembayaran, review, seller), dipilih karena strukturnya mirip platform marketplace seperti Shopee.

## Tools
- **Python** (Pandas, Matplotlib, Seaborn) — data cleaning & exploratory data analysis
- **SQL** (SQLite) — analisis mendalam & customer segmentation
- **Tableau Public** — dashboard interaktif

## Proses
1. **Data Cleaning & EDA** — menggabungkan 9 tabel dataset, menangani missing values, menerjemahkan kategori produk, membuat fitur waktu (jam/hari/bulan pembelian)
2. **Analisis SQL** — query untuk performa kategori, pola waktu transaksi, segmentasi customer (repeat vs one-time buyer), dan analisis metode pembayaran
3. **Visualisasi** — dashboard interaktif di Tableau Public yang merangkum temuan utama

## Key Findings
- Insight 1: Order meingkat mulai pukul 9 keatas, dan akan memuncak pada pukul 2 siang, dan akan stabil hingga pukul 10 malam
- Insight 2: Katagory Buety & Healt menjadi kataogry terlaris dengan total order mencapai 8000+ 
- Insight 3: Hanya ±3% pelanggan yang termasuk repeat buyer, namun kontribusi mereka terhadap total revenue mencapai ±15% — menunjukkan ada peluang besar di retensi pelanggan yang selama ini kurang digarap dibanding akuisisi pelanggan baru lewat ads.

## Dashboard
https://public.tableau.com/views/SalesAnalysis_17868268708590/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Rekomendasi Bisnis
Tingkatkan ads untuk katagory Beuty & Healt, berikan diskon atau isentif khusus ke pelanggan setia agar mereka ingin repeat order

## Struktur Repo
```
├── 01_data_cleaning_eda.ipynb   # notebook cleaning & EDA
├── queries.sql                  # kumpulan query SQL analisis
├── final_dashboard_data.csv     # data hasil olahan untuk dashboard
├── screenshots/                 # screenshot chart & dashboard
└── README.md
```
