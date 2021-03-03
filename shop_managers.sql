create table shop.shop_managers
(
    id               serial not null
        constraint shop_managers_pkey
            primary key,
    shop_id         integer,
    manager_id       integer
)