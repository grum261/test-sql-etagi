select object_id, concat(FIRST_DAY_OF_WEEK(date_create), ' - ', FIRST_DAY_OF_WEEK(date_create) + interval 7 day) from objects;
