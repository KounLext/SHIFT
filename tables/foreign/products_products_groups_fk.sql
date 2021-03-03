alter table shop.products
add constraint products_products_groups_fk foreign key (group_id)
references shop.products_groups (id)