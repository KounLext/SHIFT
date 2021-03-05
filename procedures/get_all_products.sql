create or replace procedure get_all_products(
    p_product_id     inout    integer[],
    p_name inout varchar[]
)
as
$$
begin
    select array_agg(se.id),
           array_agg(se.name)
      into p_product_id,
           p_name
      from shop.products se;
end;
$$ language plpgsql;