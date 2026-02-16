-- 1. KATEGORİLER
INSERT INTO category (name, description) VALUES ('Roman', 'Kurgu edebiyat eserleri');
INSERT INTO category (name, description) VALUES ('Tarih', 'Tarihi olaylar ve incelemeler');
INSERT INTO category (name, description) VALUES ('Bilim Kurgu', 'Gelecek ve teknoloji temalı kurgular');
INSERT INTO category (name, description) VALUES ('Felsefe', 'Düşünce ve felsefi eserler');
INSERT INTO category (name, description) VALUES ('Biyografi', 'Yaşam öyküleri');

-- 2. YAZARLAR
INSERT INTO author (name, birth_date, country) VALUES ('Yaşar Kemal', '1923-10-06', 'Türkiye');
INSERT INTO author (name, birth_date, country) VALUES ('Sabahattin Ali', '1907-02-25', 'Türkiye');
INSERT INTO author (name, birth_date, country) VALUES ('Orhan Pamuk', '1952-06-07', 'Türkiye');
INSERT INTO author (name, birth_date, country) VALUES ('Virginia Woolf', '1882-01-25', 'İngiltere');
INSERT INTO author (name, birth_date, country) VALUES ('Franz Kafka', '1883-07-03', 'Çekya');

-- 3. YAYIMCILAR

INSERT INTO publisher (name, establishment_year, address) VALUES ('İş Bankası Yayınları', 1956, 'İstanbul');
INSERT INTO publisher (name, establishment_year, address) VALUES ('Can Yayınları', 1981, 'İstanbul');
INSERT INTO publisher (name, establishment_year, address) VALUES ('İletişim Yayınları', 1982, 'İstanbul');
INSERT INTO publisher (name, establishment_year, address) VALUES ('Metis Yayınları', 1982, 'İstanbul');
INSERT INTO publisher (name, establishment_year, address) VALUES ('Doğan Kitap', 1999, 'İstanbul');

-- 4. KİTAPLAR
INSERT INTO book (name, publication_year, stock, author_id, publisher_id) VALUES ('İnce Memed', 1955, 10, 1, 1);
INSERT INTO book (name, publication_year, stock, author_id, publisher_id) VALUES ('Kürk Mantolu Madonna', 1943, 15, 2, 2);
INSERT INTO book (name, publication_year, stock, author_id, publisher_id) VALUES ('Masumiyet Müzesi', 2008, 8, 3, 5);
INSERT INTO book (name, publication_year, stock, author_id, publisher_id) VALUES ('Kendine Ait Bir Oda', 1929, 20, 4, 4);
INSERT INTO book (name, publication_year, stock, author_id, publisher_id) VALUES ('Dönüşüm', 1915, 12, 5, 3);

-- 5. KİTAP-KATEGORİ (Many-to-Many)

INSERT INTO book_category (book_id, category_id) VALUES (1, 1);
INSERT INTO book_category (book_id, category_id) VALUES (2, 1);
INSERT INTO book_category (book_id, category_id) VALUES (3, 1);
INSERT INTO book_category (book_id, category_id) VALUES (4, 4);
INSERT INTO book_category (book_id, category_id) VALUES (5, 1);

-- 6. ÖDÜNÇ ALMA
INSERT INTO book_borrowing (borrower_name, borrower_mail, borrowing_date, return_date, book_id) 
VALUES ('Ahmet Yılmaz', 'ahmet@mail.com', '2024-02-01', '2024-02-10', 1);
INSERT INTO book_borrowing (borrower_name, borrower_mail, borrowing_date, return_date, book_id) 
VALUES ('Ayşe Demir', 'ayse@mail.com', '2024-02-05', NULL, 2);
INSERT INTO book_borrowing (borrower_name, borrower_mail, borrowing_date, return_date, book_id) 
VALUES ('Mehmet Kaya', 'mehmet@mail.com', '2024-02-08', NULL, 3);