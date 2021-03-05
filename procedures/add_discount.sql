create or replace procedure add_discount(
p_type_id in integer,
p_product_id in integer,
p_group_id in integer,
p_from_date in timestamp,
p_to_date in timestamp,
p_percent in double precision,
p_fixed_sum in money
) as $$
    begin
        insert into shop.discounts (type_id, product_id, group_id, from_date, to_date, percent, fixed_sum)
        values (p_type_id, p_product_id, p_group_id, p_from_date, p_to_date, p_percent, p_fixed_sum);
    end;
$$ language plpgsql