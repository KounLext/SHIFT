create table shop.products_groups
(
    id              serial not null
        constraint products_groups_pkey
            primary key,
    group_name      varchar,
    parent_group_id integer
);