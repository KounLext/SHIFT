create table shop.quantity_types 
(
    id               serial not null
        constraint quantity_types_pkey
            primary key,
    type 	     varchar
)