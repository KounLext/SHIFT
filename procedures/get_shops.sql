create or replace procedure get_shops(
    p_shop_id     inout    integer[],
    p_name inout varchar[]
)
as
$$
begin
    select array_agg(se.id),
           array_agg(se.name)
      into p_shop_id,
           p_name
      from shop.shops se;
end;
$$ language plpgsql;