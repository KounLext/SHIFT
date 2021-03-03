create table shop.shops_warehouse
(
    id               serial not null
        constraint shops_warehouse_pkey
            primary key,
    shop_id          integer,
    product_id       integer,
    quantity         integer
)