

create table if not exists characters 
(
	character_id integer primary key,
	type varchar(50) not null,
	name text not null,
	gender varchar(20) not null
);


create table if not exists weapons
(
	weapon_id integer primary key,
	name text not null,
	type varchar(20),
	character_id integer references characters(character_id) on delete cascade
);


create table if not exists body_parts
(
	body_part_id integer primary key,
	name text not null,
	type_of_owner varchar(50) not null,
	character_id integer references characters (character_id) on delete cascade
);


create table if not exists features
(
	features_id integer primary key,
	type varchar(30) not null,
	description text not null,
	body_part_id integer references body_parts(body_part_id) on delete cascade
);


create table if not exists interactions
(
	character_id integer references characters,
	body_part_id integer references body_parts,
	type varchar(20) not null,
	description text not null,
	primary key(character_id, body_part_id)
);



create table if not exists behaviour_ch
(
	behaviour_ch_id integer primary key,
	type varchar(20) not null,
	description text not null,
	character_id integer references characters(character_id) on delete cascade
);


create table if not exists behaviour_bp
(
	behaviour_bp_id integer primary key,
	type varchar(20) not null,
	description text not null,
	body_part_id integer references body_parts(body_part_id) on delete cascade
);
