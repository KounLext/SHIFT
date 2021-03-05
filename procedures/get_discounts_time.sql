create or replace procedure get_discounts_time(
    p_from_date     in    timestamp,
    p_to_date     in    timestamp,
    p_discount_id inout integer[],
    p_product_id inout integer[],
    p_type_id inout integer[],
    p_percent inout double precision[],
    p_fixed_sum inout money[],
    p_from_date_spec     inout    timestamp[],
    p_to_date_spec     inout    timestamp[]
)
as
$$
begin
    select array_agg(se.id),
           array_agg(se.product_id),
           array_agg(se.type_id),
           array_agg(se.percent),
           array_agg(se.fixed_sum),
           array_agg(se.from_date),
           array_agg(se.to_date)
      into p_discount_id,
           p_product_id,
           p_type_id,
           p_percent,
           p_fixed_sum,
           p_from_date_spec,
           p_to_date_spec
      from shop.discounts se
      where se.from_date>=p_from_date and se.to_date<=p_to_date;
end;
$$ language plpgsql;