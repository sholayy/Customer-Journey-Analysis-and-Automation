SELECT reg.my_date, reg.source, reg.phone_type,
       COALESCE(reg.no_of_regs,0) no_of_regs,
       COALESCE(freetree.free_tree_users,0) free_tree_users,
	   COALESCE(super_tree.super_tree_users,0) super_tree_users,
	   COALESCE(paid.paying_users,0)paying_users
	 FROM  
---no of users who registered
(select r.my_date,r.source,r.phone_type, count(distinct(user_id)) as no_of_regs
from public.registrations r
group by r.my_date,r.source,r.phone_type) as reg
LEFT JOIN
--No of users who sent a free tree
(select r.my_date,r.source,r.phone_type, count(distinct(ft.user_id)) as free_tree_users
from registrations r 
JOIN public.free_tree ft
ON r.user_id =ft.user_id
group by r.my_date,r.source,r.phone_type) as freetree
ON freetree.my_date = reg.my_date
AND freetree.source = reg.source
and freetree.phone_type = reg.phone_type
LEFT JOIN 
--No of users who sent a super tree
(select r.my_date,r.source,r.phone_type, count(distinct(st.user_id)) as super_tree_users
from registrations r 
JOIN public.super_tree st
ON r.user_id =st.user_id
group by r.my_date,r.source,r.phone_type) as super_tree
ON super_tree.my_date = reg.my_date
AND super_tree.source = reg.source
and super_tree.phone_type = reg.phone_type
LEFT JOIN
--No of users who are paying 
(select r.my_date,r.source,r.phone_type, count(distinct(paying_users.user_id)) as paying_users
from registrations r 
JOIN 
(  select user_id
   from public.super_tree st
   group by user_id
   having count(*)>1)as paying_users
ON r.user_id =paying_users.user_id
group by r.my_date,r.source,r.phone_type) as paid
ON paid.my_date = reg.my_date
AND paid.source = reg.source
and paid.phone_type = reg.phone_type
