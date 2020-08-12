--use tiffin

--insert into collection_point(zone,c_address)
--values('x','xyz'),('y','abc'),('z','def'),('a','ghi'),('b','jkl')

--insert into recycling_center(r_c_address,zone,contact_number,center_name)
--values('xyz','x',8169163652,'bharat'),('jkl','b',8169163231,'pvi'),('ghi','a',8169361657,'else'),('def','z',8159113654,'gada'),('abc','y',9139163652,'bada')

--insert into Delivery_boys(D_id,phone_number,name,c_address_drop,c_address_collects,r_c_address)
--values(1,8169163652,'max','xyz','abc','xyz'),(2,8169166652,'ovi','abc','def','jkl'),(3,8199113656,'man','ghi','jkl','ghi'),(4,8129162656,'max','def','ghi','def'),(5,8164161653,'max','jkl','xyz','abc')

--insert into accounts(D_id,acc_no,salary,transportation_cost)
--values(1,1,3000,200),(2,2,3000,220),(3,3,3700,250),(4,5,3600,200),(5,4,3050,20)

--insert into customer_ratings(rating)
--values(5),(1),(4),(2),(3)

--insert into subscription(subs_id,amount_due,s_type)
--values(1,20,'A'),(2,10,'B'),(3,200,'C'),(4,20,'C'),(5,50,'B')

--insert into customers(customer_id,cust_address,phone_number,D_id_deliver,D_id_return,subs_id)
--values(1,'abc',8169163652,1,2,3),(2,'abc',8169163652,2,1,2),(3,'abc',8169163652,3,5,1),(4,'abc',8169163652,4,4,5),(5,'abc',8169163652,5,3,4)

--insert into Hotel(D_id,address_hotel,no_of_tiffins,hotel_id,phone_number,return_recycle)
--values(1,'abc',2,1,8169163652,'xyz'),(3,'xyz',1,2,9169113652,'abc'),(5,'def',8,3,8169163652,'jkl'),(2,'ghi',2,4,8169123672,'def'),(4,'jkl',3,5,8169163652,'ghi')

--insert into Home(home_id,phone_number,no_of_tiffins,h_address,D_id,return_recycle)
--values(1,8169163652,4,'abc',2,'xyz'),(2,8165163152,2,'def',4,'abc'),(3,8117163652,4,'ghi',1,'jkl'),(4,8169113682,6,'jkl',3,'ghi'),(5,8169163652,4,'ghi',5,'def')

--insert into mode_of_transportation(v_id,vehicle_type,vehicle_no)
--values(1,'A',1234),(2,'B',1134),(3,'C',1235),(4,'D',5234),(5,'D',1334)

--insert into NGO(NGO_id,address_ngo,name_ngo,tollfreeNo)
--values(1,'abc','akash',63814214),(2,'def','usha',63814514),(3,'ghi','ushaprakash',63811219),(4,'jkl','oviprasad',62811214),(5,'xyz','akash',63814214)

--insert into picks_home_delBoys(time_pick,home_id,D_id)
--values('11:30:00',1,5),('14:20:00',2,4),('12:30:00',3,3),('11:00:00',4,2),('11:30:00',5,1)

--insert into drops(time_drops,c_address,D_id)
--values('16:00:00','abc',5),('20:20:00','ghi',4),('21:00:00','xyz',3),('17:00:00','def',2),('16:30:00','jkl',1) 

--insert into collects(time_collects,c_address,D_id)
--values('14:30:00','abc',5),('22:00:00','def',4),('21:30:00','ghi',3),('16:00:00','jkl',2),('16:30:00','xyz',1)

--insert into deliver(D_id,customer_id,del_time)
--values(1,2,'14:00:00'),(2,4,'13:00:00'),(3,1,'13:30:00'),(4,3,'14:30:00'),(5,5,'12:00:00')

--insert into gets(D_id,rating)
--values(1,3),(2,5),(3,2),(4,4),(5,2)

--insert into funds(ngo_id,hotel_id,cust_id)
--values(1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5)

--insert into uses(hotel_id,home_id,D_id,c_address,customer_id,r_c_address,v_id)
--values(1,1,1,'abc',1,'xyz',1),(2,2,2,'def',2,'jkl',2),(3,3,3,'ghi',3,'ghi',3),(4,4,4,'jkl',4,'def',4),(5,5,5,'xyz',5,'abc',5)