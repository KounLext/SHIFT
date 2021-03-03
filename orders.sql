create table shop.orders
(
    id           serial not null
        constraint orders_pkey
            primary key,
    shop_id      integer,
    employee_id  integer,
    total_amount money,
    date         timestamp
)