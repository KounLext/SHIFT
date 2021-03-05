create or replace procedure add_product(
p_name in varchar,
p_group_id in integer,
p_price in money,
p_quantity_type_id in integer
) as $$
    begin
        insert into shop.products (group_id, price, quantity_type_id, name)
        values (p_group_id, p_price, p_quantity_type_id, p_name);
    end;
$$ language plpgsql