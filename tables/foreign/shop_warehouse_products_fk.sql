alter table shop.shop_warehouse
add constraint shop_warehouse_products_fk foreign key (product_id)
references shop.products (id)