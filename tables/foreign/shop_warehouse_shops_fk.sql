alter table shop.shop_warehouse
add constraint shop_warehouse_shops_fk foreign key (shop_id)
references shop.shops (id)