create or replace procedure change_employee_shop(
p_employee_id in integer,
p_shop_id in integer
) as $$
    begin
        UPDATE shop.employees
        SET shop_id = p_shop_id
        WHERE id = p_employee_id;
    end;
$$ language plpgsql