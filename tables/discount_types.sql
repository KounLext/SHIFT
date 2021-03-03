create table shop.discount_types
(
    id               serial not null
        constraint discount_types_pkey
            primary key,
    type	     varchar
)
