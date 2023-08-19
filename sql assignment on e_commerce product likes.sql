create database e_commerce;
use e_commerce;

CREATE TABLE product_info (
    productid INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO product_info (productid, product_name)
VALUES
    (101, 'laptop'),
    (102, 'tablet'),
    (103, 'dumbell'),
    (104, 'bracelet'),
    (105, 'mobile');
    select * from product_info;
    
    CREATE TABLE user_likes (
    userid INT,
    productid INT,
    liked_date DATE,
    FOREIGN KEY (productid) REFERENCES product_info(productid)
);

INSERT INTO user_likes (userid, productid, liked_date)
VALUES
    (11, 101, '2023-08-01'),
    (12, 102, '2023-08-02'),
    (13, 101, '2023-08-03'),
    (14, 103, '2023-08-03'),
    (15, 102, '2023-08-04');
    
    select * from user_likes;
    
    select pi.productid
    from product_info pi left join user_likes ul on
    pi.productid=ul.productid
    group by pi.productid
    having count(ul.userid)=0;

