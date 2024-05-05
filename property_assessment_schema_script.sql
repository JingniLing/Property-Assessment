CREATE SCHEMA IF NOT EXISTS property_assessment;

CREATE TABLE property_assessment.dim_location (
	location_id bigint NOT NULL  ,
	st_num integer  ,
	st_name varchar(100)  ,
	city varchar(100)  ,
	zip_code integer    ,
    CONSTRAINT pk_dim_location PRIMARY KEY (location_id)
 );


CREATE TABLE property_assessment.dim_property (
	property_id bigint NOT NULL  ,
	num_bldgs integer  ,
	luc integer  ,
	lu varchar(100)  ,
	lu_desc varchar(255)  ,
	bldg_type varchar(100)  ,
	roof_structure varchar(100)  ,
	roof_cover varchar(100)  ,
	int_wall varchar(100)  ,
	ext_finished varchar(100)  ,
	res_floor integer  ,
	land_sf  integer ,
	gross_area integer   ,
	living_area integer   ,
	bed_rms integer  ,
	full_bth integer  ,
	half_BTH integer  ,
	kitchen integer  ,
	tt_rms integer  ,
	bthrm_style1 varchar(100)  ,
	kitchen_style1 varchar(100)  ,
	KITCHEN_TYPE varchar(100)  ,
	heat_type varchar(100)  ,
	ac_type varchar(100)  ,
	fire_place integer  ,
	num_parking integer  ,
	prop_view varchar(100)  ,
    int_cond_score integer  ,
    ext_cond_score integer  ,
    prop_view_score integer ,
	yr_built date  ,
	yr_remodel date ,
    CONSTRAINT pk_dim_property PRIMARY KEY (property_id)
 );


CREATE TABLE property_assessment.dim_property_owner (
	owner_id bigint NOT NULL  ,
	own_occ varchar(100)  ,
	owner varchar(100)  ,
    own_occ_type integer
    CONSTRAINT pk_dim_property_owner PRIMARY KEY (owner_id)
 );


CREATE TABLE property_assessment.facts_property (
	pid bigint NOT NULL  ,
	gis_id integer  ,
	land_value integer  ,
	bldg_value integer  ,
	total_value int  ,
	gross_tax float  ,
	location_id integer NOT NULL  ,
	property_id integer NOT NULL  ,
	owner_id integer NOT NULL   ,
    CONSTRAINT pk_facts_property PRIMARY KEY (pid)
 );

