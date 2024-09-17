1. Menghapus Duplikasi DATA
DELETE FROM customers
WHERE customer_id NOT IN (
    SELECT MIN(customer_id)
    FROM customers
    GROUP BY customer_name, email
);

2. Menghapus Nilai Kosong atau NULL
DELETE FROM orders
WHERE order_date IS NULL;

3. Mengganti nilai NULL dengan nilai DEFAULT
UPDATE products
SET price = 0
WHERE price IS NULL;

4. Menghapus DATA pesanan yang lebih tua dari 5 tahun
DELETE FROM orders
WHERE order_date < NOW() - INTERVAL 5 YEAR;

5. Memperbaiki FORMAT email yang salah
UPDATE customers
SET email = LOWER(email)
WHERE email NOT LIKE '%@%.com';

6. Menggabungkan nama depan dan nama belakang
UPDATE customers
SET full_name = CONCAT(first_name, ' ', last_name);

7. Menghapus spasi tambahan di awal dan akhir teks
UPDATE products
SET product_name = TRIM(product_name);

8. Mengganti karakter yang tidak diinginkan
UPDATE customers
SET phone = REPLACE(phone, '-', '');

9. Mengubah semua nama pelanggan menjadi huruf kapital
UPDATE customers
SET customer_name = UPPER(customer_name);

10. Menghapus pelanggan yang tidak pernah melakukan pemesanan
DELETE FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM orders);

11. Memperbaiki DATA kategori yang tidak konsisten
UPDATE products
SET category = 'Electronics'
WHERE category IN ('electronic', 'Electronix', 'Electr');
