create table shop.employees
(
    id               serial not null
        constraint employees_pkey
            primary key,
    first_name       varchar,
    second_name      varchar,
    last_name        varchar,
    position         varchar,
    manager_id       integer,
    shop_id          integer
)