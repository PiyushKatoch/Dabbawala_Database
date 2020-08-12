create database tiffin
use tiffin

create table collection_point(
zone varchar(10),
c_address varchar(30) constraint c_pk primary key
)

create table recycling_center(
r_c_address varchar(30) constraint r_c_pk primary key,
zone varchar(20),
contact_number bigint,
center_name varchar(20)
)

create table Delivery_boys(
D_id int constraint Delivery_boys_pk primary key,
phone_number bigint,
name varchar(20),
c_address_drop varchar(30) constraint c_p_fk foreign key(c_address_drop) references collection_point(c_address),
c_address_collects varchar(30) constraint c_p_fk1 foreign key(c_address_collects) references collection_point(c_address),
r_c_address varchar(30) constraint r_c_fk foreign key(r_c_address) references recycling_center(r_c_address)
)

create table accounts(
D_id int constraint Delivery_boys_fk foreign key(D_id) references Delivery_boys(D_id),
acc_no int constraint accounts_pk primary key,
salary int,
transportation_cost int
)

create table customer_ratings(
rating int constraint c_rat_pk primary key 
)

create table subscription(
subs_id int constraint subs_pk primary key,
amount_due int,
s_type varchar(10)
)

create table customers(
customer_id int constraint customers_pk primary key,
cust_address varchar(30),
phone_number bigint,
D_id_deliver int constraint del_fk foreign key(D_id_deliver) references Delivery_boys(D_id),
D_id_return int constraint del_fk2 foreign key(D_id_return) references Delivery_boys(D_id),
subs_id int constraint subs_fk foreign key(subs_id) references subscription(subs_id)
)

create table Hotel(
D_id int constraint D_id_fk1 foreign key(D_id) references Delivery_boys(D_id),
address_hotel varchar(20),
no_of_tiffins int,
hotel_id int constraint hotel_pk primary key,
phone_number bigint,
return_recycle varchar(30) constraint rr_fk foreign key(return_recycle) references recycling_center(r_c_address)
)

create table Home(
home_id int constraint home_pk primary key,
phone_number bigint, 
no_of_tiffins int,
h_address varchar(30),
D_id int constraint D_id_fk2 foreign key(D_id) references Delivery_boys(D_id),
return_recycle varchar(30) constraint rr1_fk foreign key(return_recycle) references recycling_center(r_c_address)
)

create table mode_of_transportation(
v_id int constraint m_o_t_pk primary key,
vehicle_type varchar(10),
vehicle_no int
)

create table NGO(
NGO_id int constraint n_pk primary key,
address_ngo varchar(30),
name_ngo varchar(20),
tollfreeNo bigInt
)

create table picks_home_delBoys(
time_pick time,
home_id int constraint home_pk1 foreign key(home_id) references Home(home_id),
D_id int constraint Delivery_boys_pk12 foreign key(D_id) references Delivery_boys(D_id),
constraint pk_picksHd primary key (home_id,D_id,time_pick))

create table picks_hotel_delBoys(
time_pick time,
hotel_id int constraint hotel_pk1 foreign key(hotel_id) references Hotel(hotel_id),
D_id int constraint Delivery_boys_pk123 foreign key(D_id) references Delivery_boys(D_id),
constraint pk_pickshd1 primary key (hotel_id,D_id,time_pick))

create table drops(
time_drops time,
c_address varchar(30) constraint coll_p_fk foreign key(c_address) references collection_point(c_address),
D_id int constraint del_b_fk foreign key(D_id) references Delivery_boys(D_id),
constraint drops_pk primary key(time_drops, c_address, D_id) 
)

create table collects(
time_collects time,
c_address varchar(30) constraint coll_p_fk1 foreign key(c_address) references collection_point(c_address),
D_id int constraint del_b_fk1 foreign key(D_id) references Delivery_boys(D_id),
constraint drops_pk12 primary key(time_collects, c_address, D_id )
)

create table deliver(
D_id int constraint del_b_fk2 foreign key(D_id) references Delivery_boys(D_id),
customer_id int constraint cust_fk foreign key(customer_id) references customers(customer_id),
del_time time,
constraint deliver_pk primary key(D_id,customer_id,del_time)
)

create table gets(
D_id int constraint D_boys_fk foreign key(D_id) references Delivery_boys(D_id),
rating int constraint c_r_fk foreign key(rating) references customer_ratings(rating),
constraint pk_gets primary key(D_id, rating)
)

create table funds(
ngo_id int constraint nfk foreign key(ngo_id) references NGO(NGO_id),
hotel_id int constraint hotel_pk1234 foreign key(hotel_id) references Hotel(hotel_id),
cust_id int constraint customer1234 foreign key(cust_id) references customers(customer_id)
constraint pkfund primary key(ngo_id, hotel_id,cust_id)
)

create table uses(
hotel_id int constraint h_fku foreign key(hotel_id) references Hotel(hotel_id),
home_id int constraint ho_fku foreign key(home_id) references Home(home_id),
D_id int constraint D_id_fku foreign key(D_id) references Delivery_boys(D_id),
c_address varchar(30) constraint coll_p_fku foreign key(c_address) references collection_point(c_address),
customer_id int constraint cust_fku foreign key(customer_id) references customers(customer_id),
r_c_address varchar(30) constraint r_c_fku foreign key(r_c_address) references recycling_center(r_c_address),
v_id int constraint u foreign key(v_id) references mode_of_transportation(v_id),
constraint pk_uses primary key (hotel_id, home_id, D_id, c_address, customer_id, r_c_address, v_id)
)



