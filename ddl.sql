-- Create a table

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100),
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    role ENUM('admin', 'user', 'guest') NOT NULL DEFAULT 'user',
    age INT CHECK (age >= 0),
    email VARCHAR(255) UNIQUE NOT NULL,
    isBoolean BOOLEAN NOT NULL DEFAULT FALSE
);
-- สร้างตาราง employees ที่มีคอลัมน์ id, name, position และ salary
-- id เป็นคีย์หลัก (primary key) ของตาราง และจะเพิ่มค่าอัตโนมัติ (AUTO_INCREMENT)
-- name เป็นคอลัมน์ที่ไม่สามารถเป็นค่าว่าง (NOT NULL)
-- position เป็นคอลัมน์ที่สามารถเป็นค่าว่างได้ (NULL)
-- name และ position เป็นข้อความ (string) ที่มีความยาวสูงสุด 100 ตัวอักษร
-- salary เป็นจำนวนทศนิยม (decimal) ที่มีความยาวสูงสุด 10 หลัก และมีทศนิยม 2 หลัก
-- created_at และ updated_at เป็นข้อมูลวันที่และเวลาที่มีค่าเริ่มต้นเป็นเวลาปัจจุบัน (DEFAULT CURRENT_TIMESTAMP)
-- updated_at จะถูกอัพเดตเป็นเวลาปัจจุบันทุกครั้งที่มีการแก้ไขแถวข้อมูล (ON UPDATE CURRENT_TIMESTAMP)
-- role เป็นคอลัมน์ที่ใช้กำหนดบทบาทของผู้ใช้ โดยมีค่าเป็น 'admin', 'user' หรือ 'guest' และมีค่าเริ่มต้นเป็น 'user'
-- age เป็นคอลัมน์ที่เก็บอายุของพนักงาน โดยมีเงื่อนไขว่าอายุต้องไม่ต่ำกว่า 0 (CHECK (age >= 0))
-- email เป็นคอลัมน์ที่เก็บอีเมลของพนักงาน โดยมีเงื่อนไขว่าอีเมลต้องไม่ซ้ำกัน (UNIQUE) และไม่สามารถเป็นค่าว่างได้ (NOT NULL)
-- isBoolean เป็นคอลัมน์ที่เก็บค่าบูลีน (boolean) โดยมีค่าเริ่มต้นเป็น FALSE และไม่สามารถเป็นค่าว่างได้ (NOT NULL)

CREATE TABLE addresses (
    id INT PRIMARY KEY,
    address_line VARCHAR(255) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES employees(id)
);
-- สร้างตาราง addresses ที่มีคอลัมน์ id และ address_line
-- id เป็นคีย์หลัก (primary key) ของตาราง
-- address_line เป็นคอลัมน์ที่ไม่สามารถเป็นค่าว่าง (NOT NULL)
-- มีการกำหนด foreign key ที่เชื่อมโยงกับตาราง employees โดยใช้คอลัมน์ user_id ที่อ้างอิงไปยังคอลัมน์ id ของตาราง employees
-- หมายเหตุ: ควรมีการเพิ่มคอลัมน์ user_id ในตาราง addresses เพื่อให้ foreign key ทำงานได้


ALTER TABLE addresses ADD COLUMN age INT CHECK (age >= 0);
-- แก้ไขตาราง addresses โดยเพิ่มคอลัมน์ age ที่มีเงื่อนไขว่าอายุต้องไม่ต่ำกว่า 0 (CHECK (age >= 0))
-- หมายเหตุ: การเพิ่มคอลัมน์นี้จะต้องไม่มีข้อมูลที่ขัดแย้งกับเงื่อนไขที่กำหนด


-- drop table employees;
DROP TABLE IF EXISTS employees RESTRICT;
-- ลบตาราง employees หากมีอยู่ และไม่ให้ลบตารางที่มีการเชื่อมโยง (foreign key) กับตารางอื่น (RESTRICT)
DROP TABLE IF EXISTS employees CASCADE;
-- ลบตาราง employees หากมีอยู่ และลบตารางที่มีการเชื่อมโยง (foreign key) กับตารางอื่น (CASCADE)
