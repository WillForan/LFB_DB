create table staff (
   sid varchar(50) primary key,  -- library id
   name varchar(50),
   startdate datetime,
   position varchar(50),
   enddate datetime default NULL
);

create table patron (
   pid int primary key,
   name varchar not null,
   dob datetime,
   gender char(1),
   max_media numeric
);

create table patron_note (
   pid int,
   note text,
   note_date datetime,
   note_type varchar(50)
);

create table patron_contact (
   cid int primary key,
   pid int,
   contact_type varchar(50),
   contact_value varchar(100)
);

-- when was patron last conatcted, by what means, by who
-- was it succesful
create table contacted (
   cid int not NULL,
   sid varchar(50) not NULL,
   contact_time datetime,
   success boolean,
   valence int
);

create table media (
   mid int primary key,
   author varchar(50),
   title varchar(150),
   lang varchar(50),
   format varchar(50),
   has_sex boolean,
   orator_gender char(1),
   orator_accent varchar(50),
   media_length int,
   media_disk_size int
);

create table media_series (
   series_id int not NULL,
   mid int not NULL,
   series_number int not NULL
);

-- queue, rank, and have read list
create table media_patron (
   pid int not NULL,
   mid int not NULL,
   have_read boolean,
   media_rank int
);

--- tags 
create table tag (
  tag varchar(50) primary key
);

create table media_tag (
   mid int not NULL,
   tag varchar(50) not NULL,
   valence numeric default 0
);

create table patron_tag (
   pid int not NULL,
   tag varchar(50) not NULL,
   valence numeric default 0
);


--- cartidge
create table hardware (
 sn int primary key,
 capacity_GB  numeric,
 has_phones boolean default false,
 has_cables boolean default false
);

create table media_hardware (
  sn int,
  mid int
);

create table patron_hardware (
  sn int,
  pid int
);

