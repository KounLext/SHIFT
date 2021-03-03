create table shop.orders_items
(
    id               serial not null
        constraint orders_items_pkey
            primary key,
    order_id         integer,
    product_id       integer,
    quantity_type_id integer,
    quantity         integer,
    amount           money,
    discount         integer,
    total_sum        money,
    date             timestamp
)