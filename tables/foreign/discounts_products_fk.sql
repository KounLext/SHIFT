alter table shop.discounts
add constraint discounts_products_fk foreign key (product_id)
references shop.products (id)