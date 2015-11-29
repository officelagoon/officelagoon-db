--Imp queries

-- query to get attributes for a space type; Change space type based on selection

select c.screen_name, d.attribute_type_name,e.attribute_ui_type,level,prop1
 from 
ol_main.space_type_attributes a, 
ol_main.space_types b,
ol_main.space_attributes c,
ol_main.attribute_types d,
ol_main.attribute_ui_prop e
where a.type_id = b.type_id
and c.attribute_id = a.attribute_id
and c.attribute_type_code = d.attribute_type_code
and c.attribute_id = e.attribute_id
and b.type_name in( 'ALL' ,'SHAREDOFF')
and a.status = 'A'
order by e.level,e.prop1

-- to insert into ui prop 
insert into ol_main.attribute_ui_prop
(select attribute_id,attribute_type_code,screen_name, ty,lv,rn p1,null p2, 
to_date(to_char(now(), 'YYYY/MM/DD'), 'YYYY/MM/DD'),to_date(to_char(now(), 'YYYY/MM/DD'), 'YYYY/MM/DD')  from 
(select attribute_id,attribute_type_code,screen_name,'CB' ty,1 lv,row_number() over(partition by attribute_type_code order by attribute_id) rn 
from ol_main.space_attributes ) as a)