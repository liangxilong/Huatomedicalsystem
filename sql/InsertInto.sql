

insert  into `authority_level`(`authority_level_id`,`authority_level_name`) values 

(1,'院长'),

(2,'副院长'),

(3,'主任'),

(4,'副主任'),

(5,'医生'),

(6,'护士'),

(7,'仓库管理员'),

(8,'统计工作人员');



insert  into `depart`(`depart_id`,`depart_name`,`manager_staff_id`,`vice_manager_staff_id`,`depart_properties`) values 

(1,'门诊部',3001,4001,'医生，护士'),

(2,'药剂科',3002,4002,'配药护士'),

(3,'仓库',3003,4003,'仓管'),

(4,'财务部',3004,4004,'统计人员');



insert  into `job`(`job_id`,`job_name`,`job_depart_id`) values 

(1,'耳鼻喉科',1),

(2,'骨科',1),

(3,'妇产科',1),

(4,'儿科',1);


insert  into `material`(`material_id`,`material_specifications`,`material_name`,`material_type`,`material_price`,`material_Instructions`) values 

(1,'1L/支','太太口服液','消耗品',10,'一天1支'),

(2,'4板/盒','白加黑胶囊','药品',12,'一天1板'),

(3,'100/袋','棉签','消耗品',5,'无');



insert  into `patient`(`patient_id`,`patient_name`,`patient_sex`,`patient_age`,`patient_state`,`patient_phone`,`patient_allergy`) values 

(1,'kx','女',11,'天上人间','1777777777','水泡'),

(2,'kx2','男',12,'东方舵手服','1566544664',NULL);


insert  into `prescription`(`prescription_id`,`prescription_doctor_id`,`prescription_content`,`prescription_patient_id`,`prescription_date`,`whether_money`,`collect_fees_id`) values 

(1,5001,'抓XXX药500克',2,'2018-01-10 15:36:43','resources/images/mayun.jpg',1);


insert  into `staff_info`(`staff_info_id`,`staff_info_name`,`staff_info_duty`,`staff_info_education`,`staff_info_sex`,`staff_info_birthday`,`staff_info_nation`,`staff_info_card_no`,`staff_info_marriage`,`staff_info_health`,`staff_info_start_work`,`staff_info_address`,`staff_info_phone`,`staff_info_email`,`staff_info_job_id`,`staff_info_image`,`staff_info_title`,`staff_info_salary`) values 

(5001,'康医生','医生','博士','女','2001-03-01 14:43:10','汉','133515161651561','已婚','亚健康','2011-08-18 14:45:58','湖南长沙','12315616611','adsf45@qq.com',3,'resources/images/mayun.jpg','专家',10000);

insert  into `supplier`(`supplier_id`,`supplier_name`,`supplier_address`,`supplier_phone`,`supplier_reputation_level`) values 

(1,'hyf','深圳腾讯总部','18455546646','优'),

(2,'康鑫','湖南','15456446','差'),

(3,'凉席农','河南','15161656','良');



insert  into `ward`(`ward_id`,`ward_statement`,`ward_detail_address`,`ward_type`,`ward_price`) values 

(1,'使用','3楼102','豪华',100000),

(2,'预定','1楼302','普通',2000),

(3,'空闲','2楼101','贵宾',5000);

