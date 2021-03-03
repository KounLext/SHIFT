alter table shop.discounts
add constraint discounts_discounts_types_fk foreign key (type_id)
references shop.discount_types (id)