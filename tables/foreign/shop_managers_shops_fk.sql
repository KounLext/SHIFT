alter table shop.shop_managers
add constraint shop_managers_shops_fk foreign key (shop_id)
references shop.shops (id)