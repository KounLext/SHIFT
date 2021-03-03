create table shop.discounts
(
    id               serial not null
        constraint discounts_pkey
            primary key,
    type_id         integer,
    product_id      integer,
    group_id 	    integer,
    from_date       timestamp,
    to_date         timestamp,
    percent         double precision,
    fixed_sum       money
)