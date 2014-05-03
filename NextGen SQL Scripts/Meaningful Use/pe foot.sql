select distinct (um.last_name +', '+ um.first_name) AS NAME, COUNT(diab.person_Id)AS COUNT from pe_foot_diab_screen_ diab INNER JOIN user_mstr um on um.user_id = diab.created_by 
where diab.create_timestamp > '2013-10-01 00:00:00.000' and diab.create_timestamp < '2014-01-01 00:00:00.000' and um.first_name not in ('Natalie', 'Admin')
group by um.last_name, um.first_name 




--select * from pe_foot_diab_screen_

--select * from user_mstr 