with t1 as (
    select 
        categoria,
        sum(preço) as total_vendas,
        sum(quantidade_vendida) as total_quantidade_vendida


    from vendas
    group by 1
    -- group by produto

)

select 
* 
from t1
where total_vendas > 1000
order by total_vendas desc