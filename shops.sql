create table shop.shops
(
    id               serial not null
        constraint shops_pkey
            primary key,
    name             varchar,
    address	     varchar
)