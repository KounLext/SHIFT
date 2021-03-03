alter table shop.shop_managers
add constraint shop_managers_employees_fk foreign key (manager_id)
references shop.employees (id)