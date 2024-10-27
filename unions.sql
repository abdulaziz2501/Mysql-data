UNION:
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
);

CREATE TABLE teachers (
  id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
);

-- Insert sample data into the students table
INSERT INTO students (id, first_name, last_name) VALUES
(1, 'Alice', 'Adams'),
(2, 'Bob', 'Baker'),
(3, 'Carol', 'Carter'),
(4, 'David', 'Diaz'),
(5, 'Eva', 'Evans');

-- Insert sample data into the teachers table
INSERT INTO teachers (id, first_name, last_name) VALUES
(1, 'Frank', 'Fisher'),
(2, 'Grace', 'Griffin'),
(3, 'Henry', 'Harrison'),
(4, 'Irene', 'Ingram'),
(5, 'Jack', 'Andrey');


1-topshiriq: Barcha talabalar va o'qituvchilarning ismlari va familiyalarini birlashtiring, 
lekin faqat ismlari unli bilan boshlanadiganlarni kiriting (A, E, I, O yoki U).

2-topshiriq: Barcha talabalar va o'qituvchilarning ism va familiyalarini birlashtiring va 
natijalarni birinchi navbatda familiya uzunligi bo'yicha (o'sish tartibida), so'ngra alifbo tartibida familiyasi bo'yicha tartiblang.

3-topshiriq: Talabalar va o'qituvchilarning ismlari va familiyalarini, jumladan, "manba" nomli 
maxsus ustunni birlashtiring, bu shaxs talabalar yoki o'qituvchilar jadvalidan kelganligini ko'rsatadi. 
Natijalarni "manba" ustuni, keyin esa familiya bo'yicha tartiblang.

4-topshiriq: Eng yuqori id qiymatiga ega boʻlgan eng yaxshi 3 nafar talaba va oʻqituvchilarni toping. 
Ularning ism va familiyalarini birlashtiring va natijalarni id bo'yicha kamayish tartibida tartiblang.

INTERSECT:

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  product TEXT NOT NULL,
  quantity INTEGER NOT NULL
);

CREATE TABLE shipments (
  shipment_id INTEGER PRIMARY KEY,
  product TEXT NOT NULL,
  quantity INTEGER NOT NULL
);

INSERT INTO orders (order_id, product, quantity) VALUES
(1, 'Laptop', 5),
(2, 'Keyboard', 10),
(3, 'Mouse', 15),
(4, 'Monitor', 7),
(5, 'Printer', 3);

INSERT INTO shipments (shipment_id, product, quantity) VALUES
(1, 'Laptop', 5),
(2, 'Keyboard', 8),
(3, 'Mouse', 15),
(4, 'Monitor', 4),
(5, 'Headphones', 6);

5-topshiriq: Buyurtmalar va jo'natmalar jadvallarida bir xil buyurtma miqdori bo'lgan 
mahsulotlarni topadigan so'rovni yozing.

6-topshiriq: Buyurtmalar jadvalidagi buyurtma miqdori bir xil bo'lgan mahsulotlarni va 
jo'natish jadvalidagi jo'natish miqdorini topadigan so'rovni yozing, bunda miqdori 5 dan katta yoki teng.

7-topshiriq: Buyurtmalar va jo'natmalar jadvallarida bir xil mahsulot va miqdorga ega 
bo'lgan buyurtma identifikatorlarini topadigan so'rovni yozing.

8-topshiriq: Buyurtmalar va jo‘natmalar jadvallarida bir xil mahsulot va miqdorga ega 
bo‘lgan jo‘natish identifikatorlarini topadigan so‘rovni yozing, mahsulot nomi bo‘yicha o‘sish tartibida tartiblangan.

EXCEPT:

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  product TEXT NOT NULL,
  quantity INTEGER NOT NULL
);

CREATE TABLE shipments (
  shipment_id INTEGER PRIMARY KEY,
  product TEXT NOT NULL,
  quantity INTEGER NOT NULL
);

INSERT INTO orders (order_id, product, quantity) VALUES
(1, 'Laptop', 5),
(2, 'Keyboard', 10),
(3, 'Mouse', 15),
(4, 'Monitor', 7),
(5, 'Printer', 3);

INSERT INTO shipments (shipment_id, product, quantity) VALUES
(1, 'Laptop', 5),
(2, 'Keyboard', 8),
(3, 'Mouse', 15),
(4, 'Monitor', 4),
(5, 'Headphones', 6);

9-topshiriq: Buyurtmalar jadvalida mavjud bo'lgan, lekin jo'natmalar jadvalida mavjud bo'lmagan 
mahsulotlarni topadigan so'rovni yozing.

10-topshiriq: Buyurtmalar jadvalida emas, jo'natish jadvalida mavjud bo'lgan, mahsulot nomi bo'yicha 
o'sish tartibida tartiblangan mahsulotlarni topadigan so'rovni yozing.

11-topshiriq: Buyurtmalar jadvalida 10 dan katta yoki unga teng bo'lgan buyurtma identifikatorlarini 
topadigan so'rovni yozing, lekin jo'natmalar jadvalida emas.

12-topshiriq: Miqdori kamayish bo'yicha buyurtmalar jadvalida emas, balki jo'natmalar jadvalida 
5 dan kam bo'lgan jo'natma identifikatorlarini topadigan so'rovni yozing.




1-topshiriq:
