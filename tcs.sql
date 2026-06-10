Create Database tcs;

DESCRIBE tcs_stock_history;

Select Max(High) as Highest_Price
From tcs_stock_history;

Select High,Date
From tcs_stock_history
Order by High Desc
limit 10; 
-- so sept 2021 is when tcs stock values reached highest





Select Close,Date
From tcs_stock_history
where close=(
Select Min(Close)
From tcs_stock_history);
--  the minm closing price was 26 ever on 19 aug 2002 

Select Close,Date
From tcs_stock_history
where Close=(
Select Max(Close)
From tcs_stock_history);
-- stock value reached its highest closing value on 15 sept 2021 at 3955..

Select Close,Date
From tcs_stock_history
Order By Close Desc
limit 10;
-- highest ever month closing was in september 2021

Select Close,Date
From tcs_stock_history
order by Close ASC
limit 10;
-- tcs stock values closed at its lowest values in 2002 from aug to nov...






Select Date,Dividends
From tcs_stock_history
order by Dividends Desc
limit 71;
-- so only 70 times dividends were paid in these years..
-- 52 dividends out of 70 were paid after 2010  and around half or 35 after 2014
-- And unlike in close or High, amount of dividend paid didn't show in 2020,21

Select Date, `Stock Splits`,Close
From tcs_stock_history
Order by `Stock Splits` Desc
limit 4;
-- stock splits only thrice in 2006,09 and 18
-- although stock split happend in 2006 and 09 but stock price is lower in 2009


Select Date,Volume
From tcs_stock_history
order by Volume Desc
limit 25;
-- highest volume or max trading of stocks that changed hands was before 2010 and after 2010 only twice in 2018
-- 2018 march was when the highest stock were traded in a single day of tcs

Select Volume,Date
From tcs_stock_history
order by Volume Desc
limit 10 ;
-- on 13 march 2018 highest amount of stocks were traded in tcs history but avg stocks yearly shows diff pic

Select Year(Date) As Yearly,
		Avg(Volume) as avg_volume
From tcs_stock_history
Group by Yearly
Order by avg_volume Desc;
-- 2009 was the year when stocks changed maximum hands
-- 2009 was recovery year and maximum people started buying the undervalued share in optimism...

Select Year(Date) as year,
			Avg(Close) as avg_closing_value
From tcs_stock_history
Group by year
order by avg_closing_value Asc;
-- we can see that stock picked up till 2007 at 220 and then suddenly fell in 2008 at 152 
-- it recovered back in 2010 at 348
-- it grew at a consistent pace till 2015 and then a sudden dip in 2016 and slow growth in 2017
-- then a sudden pickup in growth 2018 nd 2019
-- an acceleration in 2021..




