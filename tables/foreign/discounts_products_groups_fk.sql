alter table shop.discounts
add constraint discounts_products_groups_fk foreign key (group_id)
references shop.products_groups (id)