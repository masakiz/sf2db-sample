drop table if exists t_account;
create table t_account(
    id varchar(18) primary key
    ,isdeleted boolean
    ,name varchar(255)
    ,lastname varchar(80)
    ,firstname varchar(40)
    ,billingstreet varchar(255)
    ,billingcity varchar(40)
    ,billingstate varchar(80)
    ,billingpostalcode varchar(20)
    ,billingcountry varchar(80)
    ,phone varchar(40)
    ,ownerid varchar(18)
    ,createddate timestamp
    ,createdbyid varchar(18)
    ,lastmodifieddate timestamp
    ,lastmodifiedbyid varchar(18)
    ,systemmodstamp timestamp
);

drop table if exists h_account;
create table h_account(
    id varchar(18)
    ,isdeleted boolean
    ,name varchar(255)
    ,lastname varchar(80)
    ,firstname varchar(40)
    ,billingstreet varchar(255)
    ,billingcity varchar(40)
    ,billingstate varchar(80)
    ,billingpostalcode varchar(20)
    ,billingcountry varchar(80)
    ,phone varchar(40)
    ,ownerid varchar(18)
    ,createddate timestamp
    ,createdbyid varchar(18)
    ,lastmodifieddate timestamp
    ,lastmodifiedbyid varchar(18)
    ,systemmodstamp timestamp
    ,uid serial primary key
    ,version int
    ,date_from timestamp
    ,date_to timestamp
);
create index idx_h_account_id on h_account(id);
