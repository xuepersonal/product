CREATE TABLE product_category (
                                  category_id int not null auto_increment,
                                  category_name varchar(64) not null comment '类目名字',
                                  category_type int not null comment '类目编号',
                                  create_time TIMESTAMP not null default CURRENT_TIMESTAMP comment '创建时间',
                                  update_time TIMESTAMP not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP comment '修改时间',
                                  PRIMARY KEY(category_id),
                                  UNIQUE KEY uqe_category_type (category_type)
);

INSERT INTO product_category VALUES
(1,'热榜',11,'2017-03-28 16:40:22','2017-11-26 13:22:12'),
(2,'好吃的',22,'2017-03-14 11:33:12','2017-11-26 23:18:09');

CREATE TABLE product_info (
                              product_id varchar(32) not null,
                              product_name varchar(64) not null comment '商品名字',
                              product_price decimal(8,2) not null comment '单价',
                              product_stock int not null comment '库存',
                              product_description varchar(64) comment '描述',
                              product_icon varchar(512) comment '小图',
                              product_status tinyint(3) default '0' comment '商品状态,0正常1下架',
                              category_type int not null comment '类目编号',
                              create_time TIMESTAMP not null default CURRENT_TIMESTAMP comment '创建时间',
                              update_time TIMESTAMP not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP comment '修改时间',
                              PRIMARY KEY(product_id)
);

insert into product_info values
('123456789012356789','宫保鸡丁',0.01,39,'正宗宫保鸡丁','//','0','11','2017-03-14 11:33:12','2017-11-26 23:18:09');