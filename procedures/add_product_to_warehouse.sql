create or replace procedure add_product_to_warehouse(
p_shop_id in integer,
p_product_id in integer,
p_quantity in integer
) as $$
    begin
        insert into shop.shops_warehouse (shop_id, product_id, quantity)
        values (p_shop_id, p_product_id, p_quantity);
    end;
$$ language plpgsql