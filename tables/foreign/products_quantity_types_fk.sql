alter table shop.products
add constraint products_quantity_types_fk foreign key (quantity_type_id)
references shop.quantity_types (id)