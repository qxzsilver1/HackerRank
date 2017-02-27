
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select wands.id, min_prices.age, wands.coins_needed, wands.power
from wands
inner join (select wands.code, wands.power, min(wands_property.age) as age, min(wands.coins_needed) as min_price
            from wands
            inner join wands_property
            on wands.code = wands_property.code
            where wands_property.is_evil = 0
            group by wands.code, wands.power) min_prices
on wands.code = min_prices.code
   and wands.power = min_prices.power
   and wands.coins_needed = min_prices.min_price
order by wands.power desc, min_prices.age desc;
