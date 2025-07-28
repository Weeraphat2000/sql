SELECT * -- select คือ เลือก column  * คือ เลือกทุก column
FROM users -- from คือ เลือกตารางที่ต้องการดึงข้อมูล
WHERE age > 18; -- where คือ เงื่อนไขในการกรองข้อมูล


SELECT DISTINCT name
FROM users; -- distinct คือ เลือกข้อมูลที่ไม่ซ้ำกันใน column name


SELECT *
FROM users
WHERE name LIKE 'A%'; -- like คือ การค้นหาข้อมูลที่ตรงตาม pattern ที่กำหนด
-- % คือ ตัวแทนของหลายตัวอักษร (wildcard) ที่สามารถแทนที่ด้วยตัวอักษรใดๆ


SELECT *
FROM users
WHERE name LIKE '%a%'; -- like กับ % คือ การค้นหาข้อมูลที่มีตัวอักษร 'a' อยู่ในชื่อ


SELECT *
FROM users
WHERE name LIKE '_a%'; -- _ คือ ตัวแทนของตัวอักษร 1 ตัว
-- การค้นหาข้อมูลที่มีตัวอักษร 'a' เป็นตัวที่สอง


SELECT *
FROM users
WHERE age BETWEEN 20 AND 30; -- between คือ การกรองข้อมูลที่อยู่ในช่วงที่กำหนด


SELECT *
FROM users
WHERE age IN (25, 30, 35); -- in คือ การกรองข้อมูลที่ตรงกับค่าที่ระบุในวงเล็บ


SELECT *
FROM users
WHERE name IS NOT NULL; -- is not null คือ การกรองข้อมูลที่ไม่เป็นค่าว่าง (null)


SELECT *
FROM users
WHERE age > 18 AND age < 30; -- and คือ การใช้เงื่อนไขหลายเงื่อนไขในการกรองข้อมูล


SELECT *
FROM users
WHERE age < 18 OR age > 60; -- or คือ การใช้เงื่อนไขหลายเงื่อนไขในการกรองข้อมูล


SELECT *
FROM users
WHERE NOT age = 25; -- not คือ การกลับค่าของเงื่อนไข เช่น ไม่เท่ากับ 25


SELECT name, COUNT(*) AS count
FROM users
GROUP BY name; -- group by คือ การจัดกลุ่มข้อมูลตาม column name 
-- count คือ นับจำนวนข้อมูลในแต่ละกลุ่มที่ถูกจัดกลุ่ม
-- AS คือ การตั้งชื่อ alias ให้กับ column ที่นับจำนวน


SELECT * 
FROM users
ORDER BY age DESC; -- order by คือ การเรียงลำดับข้อมูลตาม column age
-- DESC คือ เรียงจากมากไปน้อย (descending)


SELECT name, age*2 AS double_age
FROM users; -- การคำนวณค่าใหม่ใน column โดยการคูณ age ด้วย 2


SELECT name, age + 5 AS age_plus_five
FROM users; -- การคำนวณค่าใหม่ใน column โดยการบวก 5
-- AS คือ การตั้งชื่อ alias ให้กับ column ที่คำนวณค่าใหม่


SELECT *
FROM users
WHERE age > 18
ORDER BY age DESC
LIMIT 10 OFFSET 10; 
-- limit คือ การจำกัดจำนวนแถวที่ต้องการดึงข้อมูล
-- offset คือ การข้ามจำนวนแถวที่กำหนด
-- limit 10 offset 10 คือ ดึงข้อมูลสูงสุด 10 แถว โดยข้าม 10 แถวแรก
-- order by คือ การเรียงลำดับข้อมูลตาม column age ในลำดับจากมากไปน้อย
