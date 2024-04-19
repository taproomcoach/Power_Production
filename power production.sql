select * from ..global_electricity_production_d$;


Select sum(value) as America from ..global_electricity_production_d$ 
where country_name = 'United states' and parameter like '%final%' and date like '%2023%';

select sum(value) as France from ..global_electricity_production_d$ 
where country_name = 'France' and parameter like '%final%' and date like '%2023%';

select top 5 sum(value) as value, country_name as Producers from ..global_electricity_production_d$
where parameter like '%final%' and date like '%2023%'
group by country_name
order by sum(value) desc;

Select Product, sum(value) as Yearly_Value from..global_electricity_production_d$
where date like '%2023%' and country_name = 'United States'
 group by product
 order by sum(value);