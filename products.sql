create table shop.products
(
    id               serial not null
        constraint products_pkey
            primary key,
    name	     varchar,
    group_id         integer,
    price            integer,
    quantity_type_id integer,
    name             varchar
)