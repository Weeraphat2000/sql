-- COUNT
SELECT name, COUNT(*) AS count
FROM users
GROUP BY name; 
-- GROUP BY คือ การจัดกลุ่มข้อมูลตาม column name
-- COUNT คือ นับจำนวนข้อมูลในแต่ละกลุ่มที่ถูกจัดกลุ่ม (COUNT ใช้กับ ทุกประเภทข้อมูล)

-- SUM
SELECT position, SUM(salary) AS total_salary
FROM employees
GROUP BY position;
-- GROUP BY คือ การจัดกลุ่มข้อมูลตาม column position
-- SUM คือ การรวมค่าของ column salary ในแต่ละกลุ่มที่ถูกจัดกลุ่ม (SUM ใช้กับ ตัวเลขเท่านั้น)

-- AVG
SELECT position, AVG(salary) AS average_salary
FROM employees
GROUP BY position;
-- GROUP BY คือ การจัดกลุ่มข้อมูลตาม column position
-- AVG คือ การคำนวณค่าเฉลี่ยของ column salary ในแต่ละกลุ่ม (AVG ใช้กับ ตัวเลขเท่านั้น)

-- MAX
SELECT position, MAX(salary) AS max_salary
FROM employees
GROUP BY position;
-- GROUP BY คือ การจัดกลุ่มข้อมูลตาม column position
-- MAX คือ การหาค่าสูงสุดของ column salary ในแต่ละกลุ่ม (MAX ใช้กับ ตัวเลขเท่านั้น)

-- MIN
SELECT position, MIN(salary) AS min_salary
FROM employees
GROUP BY position;
-- GROUP BY คือ การจัดกลุ่มข้อมูลตาม column position
-- MIN คือ การหาค่าต่ำสุดของ column salary ในแต่ละกลุ่ม (MIN ใช้กับ ตัวเลขเท่านั้น)


-- HAVING
SELECT position, COUNT(*) AS count
FROM employees
GROUP BY position
HAVING COUNT(*) > 1;
-- GROUP BY คือ การจัดกลุ่มข้อมูลตาม column position
-- HAVING คือ การกรองข้อมูลหลังจากการจัดกลุ่ม โดยในที่นี้จะเลือกเฉพาะกลุ่มที่มีจำนวนข้อมูลมากกว่า 1 HAVING จะใช้งานร่วมกัน aggregate function เช่น COUNT, SUM, AVG, MAX, MIN
-- COUNT คือ นับจำนวนข้อมูลในแต่ละกลุ่มที่ถูกจัดกลุ่ม


-- COUNT DISTINCT
SELECT COUNT(DISTINCT position) AS distinct_positions
FROM employees;
-- COUNT DISTINCT คือ การนับจำนวนค่าที่ไม่ซ้ำกันใน column position


-- COUNT with WHERE
SELECT COUNT(*) AS count
FROM employees
WHERE age > 30;
-- COUNT คือ นับจำนวนข้อมูลทั้งหมดในตาราง employees ที่มีอายุมากกว่า 30
-- WHERE คือ เงื่อนไขในการกรองข้อมูลก่อนที่จะนับจำนวน


-- COUNT with SUM
SELECT COUNT(*) AS count, SUM(salary) AS total_salary
FROM employees
WHERE age > 30;
-- COUNT คือ นับจำนวนข้อมูลทั้งหมดในตาราง employees ที่มีอายุมากกว่า 30
-- SUM คือ การรวมค่าของ column salary ในตาราง employees ที่มีอายุมากกว่า 30
-- WHERE คือ เงื่อนไขในการกรองข้อมูลก่อนที่จะนับจำนวน


-- MAX MIN AVG SUM with GROUP BY
SELECT position, 
       MAX(salary) AS max_salary, 
       MIN(salary) AS min_salary, 
       AVG(salary) AS avg_salary, 
       SUM(salary) AS total_salary
FROM employees
GROUP BY position;
-- GROUP BY คือ การจัดกลุ่มข้อมูลตาม column position
-- MAX คือ การหาค่าสูงสุดของ column salary ในแต่ละกลุ่มที่ถูกจัดกลุ่ม
-- MIN คือ การหาค่าต่ำสุดของ column salary ในแต่ละกลุ่มที่ถูกจัดกลุ่ม
-- AVG คือ การคำนวณค่าเฉลี่ยของ column salary ในแต่ละกลุ่มที่ถูกจัดกลุ่ม
-- SUM คือ การรวมค่าของ column salary ในแต่ละกลุ่มที่ถูกจัดกลุ่ม
-- ใช้ aggregate functions ร่วมกับ GROUP BY เพื่อให้ได้ผลลัพธ์ที่ต้องการในแต่ละกลุ่ม
-- หมายเหตุ: การใช้ aggregate functions จะต้องมีการจัดกลุ่มข้อมูลด้วย GROUP BY เสมอ


-- MAX MIN AVG SUM
SELECT MAX(salary) AS max_salary, 
       MIN(salary) AS min_salary, 
       AVG(salary) AS avg_salary, 
       SUM(salary) AS total_salary
FROM employees
-- MAX คือ การหาค่าสูงสุดของ column salary ทั้งหมดในตาราง employees
-- MIN คือ การหาค่าต่ำสุดของ column salary ทั้งหมดในตาราง employees
-- AVG คือ การคำนวณค่าเฉลี่ยของ column salary ทั้งหมดในตาราง employees
-- SUM คือ การรวมค่าของ column salary ทั้งหมดในตาราง employees
-- ใช้ aggregate functions โดยไม่ต้องใช้ GROUP BY เพราะต้องการผลลัพธ์รวม