use cars;
select * from cars_data;

-- Total number of cars --
select count(*) from cars_data;

-- Total number of cars having selling price more than 100000 --
select count(*) from cars_data where selling_price >100000;

-- Name, Odometer Reading & price of the cars having selling price more than 100000 --
select name, km_driven, selling_price from cars_data where selling_price >100000;

-- Top 5 costliest cars among all --
select * from cars_data Order by selling_price desc limit 5;

-- Average selling price --
select avg(selling_price) from cars_data;

-- Minimum selling price -- 
select min(selling_price) from cars_data;

-- Records of petrol cars identified as first owned and launched after the year 2019 --
select * from cars_data where fuel = 'petrol' && owner = 'first owner' && year > 2019; 

-- Number of cars categorized on the basis of fuel type and owner --
select fuel, owner, count(*) from cars_data group by fuel, owner order by count(*) desc limit 10;

-- Name, price and odometer reading of all automatic cars (sorted in descending order) --
select name, selling_price, km_driven,transmission from cars_data group by name,selling_price,km_driven, transmission having transmission = 'automatic' ORDER BY SELLING_PRICE DESC;