/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.54 : Database - huatomedicalsystem
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huatomedicalsystem` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `huatomedicalsystem`;

/*Table structure for table `authority_level` */

DROP TABLE IF EXISTS `authority_level`;

CREATE TABLE `authority_level` (
  `authority_level_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '权限等级表(权限等级表)',
  `authority_level_name` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '权限名称',
  PRIMARY KEY (`authority_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `authority_level` */

insert  into `authority_level`(`authority_level_id`,`authority_level_name`) values 

(1,'院长'),

(2,'副院长'),

(3,'医生'),

(4,'护士'),

(5,'仓库管理员'),

(6,'统计工作人员');

/*Table structure for table `check_project` */

DROP TABLE IF EXISTS `check_project`;

CREATE TABLE `check_project` (
  `check_project_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '病例详情表(检查表)',
  `check_project_doctor_id` int(8) NOT NULL COMMENT '检查医师ID',
  `check_project_date` datetime NOT NULL COMMENT '检查时间',
  `check_project_result` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '检查结果',
  `check_project_patient_id` int(17) NOT NULL COMMENT '病历表ID',
  PRIMARY KEY (`check_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `check_project` */

/*Table structure for table `depart` */

DROP TABLE IF EXISTS `depart`;

CREATE TABLE `depart` (
  `depart_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '部门信息表',
  `depart_name` int(8) NOT NULL COMMENT '名称',
  `manager_staff_id` int(8) NOT NULL COMMENT '主任编号(工作人员表)',
  `vice_manager_staff_id` int(8) NOT NULL COMMENT '副主任编号(工作人员表)',
  `depart_properties` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '部门性质',
  PRIMARY KEY (`depart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `depart` */

/*Table structure for table `disease` */

DROP TABLE IF EXISTS `disease`;

CREATE TABLE `disease` (
  `disease_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '疾病ID',
  `disease_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '疾病名称',
  `disease_code` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '疾病编码',
  PRIMARY KEY (`disease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `disease` */

/*Table structure for table `drug_apply` */

DROP TABLE IF EXISTS `drug_apply`;

CREATE TABLE `drug_apply` (
  `drug_apply_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '物资申请表',
  `drug_apply_job_unit` int(8) NOT NULL COMMENT '领用科室ID(主键:职位信息)',
  `drug_apply_drug_id` int(8) NOT NULL COMMENT '物资名称(主键:物资表)',
  `drug_apply_number` int(8) NOT NULL COMMENT '数量',
  `drug_apply_ind_price` int(8) NOT NULL COMMENT '单价',
  `drug_apply_total_price` int(17) NOT NULL COMMENT '总金额',
  PRIMARY KEY (`drug_apply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `drug_apply` */

/*Table structure for table `expected_purchase` */

DROP TABLE IF EXISTS `expected_purchase`;

CREATE TABLE `expected_purchase` (
  `expected_purchase_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '预计采购表',
  `date_of_purchase` date NOT NULL COMMENT '采购时间',
  `expected_purchase_number` int(8) NOT NULL COMMENT '采购数量',
  `expected_purchase_price` int(8) NOT NULL COMMENT '采购单价',
  `material_id` int(8) NOT NULL COMMENT '采购物品ID',
  `buyer_staff_id` int(8) NOT NULL COMMENT '采购人ID',
  `examine_staff_id` int(8) NOT NULL COMMENT '审核人id',
  `supplier_id` int(8) NOT NULL COMMENT '供货商ID',
  `expected_purchase_status` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`expected_purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `expected_purchase` */

/*Table structure for table `hospital` */

DROP TABLE IF EXISTS `hospital`;

CREATE TABLE `hospital` (
  `hospital_id` int(17) NOT NULL AUTO_INCREMENT COMMENT '住院表',
  `hospital_patient_id` int(17) NOT NULL COMMENT '病人ID',
  `hospital_bed_id` int(8) NOT NULL COMMENT '床位ID',
  `be_hospital_date` datetime NOT NULL COMMENT '入院时间',
  `hospital_transfer_case` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '转科情况',
  `put_hospital_date` datetime NOT NULL COMMENT '出院时间',
  `staff_info_id` int(8) NOT NULL COMMENT '主治医生',
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `hospital` */

/*Table structure for table `hospital_apply` */

DROP TABLE IF EXISTS `hospital_apply`;

CREATE TABLE `hospital_apply` (
  `hospital_apply_id` int(17) NOT NULL AUTO_INCREMENT COMMENT '住院申请单',
  `hospital_apply_patient_id` int(17) NOT NULL COMMENT '病人ID',
  `hospital_apply_job_id` int(8) NOT NULL COMMENT '入院科室ID',
  `staff_info_id` int(8) NOT NULL COMMENT '审核人ID',
  `hospital_apply_date` datetime NOT NULL COMMENT '申请日期',
  `be_hospital_situation` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '住院情况',
  PRIMARY KEY (`hospital_apply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `hospital_apply` */

/*Table structure for table `hospital_fee` */

DROP TABLE IF EXISTS `hospital_fee`;

CREATE TABLE `hospital_fee` (
  `hospital_fee_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '住院费用表',
  `whether_money` int(8) NOT NULL COMMENT '是否缴费',
  `collect_fees_id` int(8) NOT NULL COMMENT '收费员ID(对应工作人员表)',
  `hospital_fee_date` datetime NOT NULL COMMENT '日期',
  `hospital_patient_id` int(17) NOT NULL COMMENT '病人ID',
  `doctor_id` int(8) NOT NULL COMMENT '主治医生ID',
  PRIMARY KEY (`hospital_fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `hospital_fee` */

/*Table structure for table `hospital_fee_detail` */

DROP TABLE IF EXISTS `hospital_fee_detail`;

CREATE TABLE `hospital_fee_detail` (
  `hospital_fee_detail_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '住院费用详情表',
  `hospital_fee_detail_money` double NOT NULL COMMENT '住院费用',
  `hospital_fee_detail_date` datetime NOT NULL COMMENT '住院日期',
  `collect_fees_id` int(8) NOT NULL COMMENT '收费员ID(对应工作人员表)',
  `fee_project_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '费用项目名称',
  `deposit_money` double NOT NULL COMMENT '押金',
  PRIMARY KEY (`hospital_fee_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `hospital_fee_detail` */

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `job_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '科室表',
  `job_name` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '科室名称',
  `job_depart_id` int(8) NOT NULL COMMENT '所属部门(部门表)',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `job` */

/*Table structure for table `material` */

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `material_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '物资编号',
  `material_specifications` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '规格',
  `material_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '物资名称',
  `material_type` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '物资类型',
  `material_price` int(8) NOT NULL COMMENT '零售价',
  `material_Instructions` varchar(300) COLLATE utf8_bin NOT NULL COMMENT '使用说明',
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `material` */

insert  into `material`(`material_id`,`material_specifications`,`material_name`,`material_type`,`material_price`,`material_Instructions`) values 

(1,'1L/支','太太口服液','消耗品',10,'一天1支'),

(2,'4板/盒','白加黑胶囊','药品',12,'一天1板'),

(3,'100/袋','棉签','消耗品',5,'无');

/*Table structure for table `material_depot` */

DROP TABLE IF EXISTS `material_depot`;

CREATE TABLE `material_depot` (
  `material_depot_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '物资仓库表',
  `material_id` int(8) NOT NULL COMMENT '物资编号',
  `depot_number` int(8) NOT NULL COMMENT '库存数量',
  `into_depot_total_money` int(17) NOT NULL COMMENT '入库总额',
  `out_depot_total_money` int(17) NOT NULL COMMENT '出库总额',
  `depot_alert_number` int(8) NOT NULL COMMENT '警报数量',
  PRIMARY KEY (`material_depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `material_depot` */

/*Table structure for table `medical_record` */

DROP TABLE IF EXISTS `medical_record`;

CREATE TABLE `medical_record` (
  `medical_record_id` int(17) NOT NULL AUTO_INCREMENT COMMENT '病历表',
  `medical_record_patient_id` int(17) NOT NULL COMMENT '病人ID',
  `medical_record_doctor_id` int(8) NOT NULL COMMENT '医师ID',
  `medical_record_content` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '病历内容',
  PRIMARY KEY (`medical_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `medical_record` */

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `patient_id` int(17) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `patient_sex` varchar(10) COLLATE utf8_bin NOT NULL,
  `patient_age` int(8) NOT NULL,
  `patient_state` varchar(255) COLLATE utf8_bin NOT NULL,
  `patient_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `patient_allergy` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `patient` */

insert  into `patient`(`patient_id`,`patient_name`,`patient_sex`,`patient_age`,`patient_state`,`patient_phone`,`patient_allergy`) values 

(1,'kx','女',11,'天上人间','1777777777','水泡'),

(2,'kx2','男',12,'东方舵手服','1566544664',NULL);

/*Table structure for table `prescription` */

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `prescription_id` int(17) NOT NULL AUTO_INCREMENT COMMENT '处方表',
  `prescription_doctor_id` int(8) NOT NULL COMMENT '主治医师ID',
  `prescription_content` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '处方内容',
  `prescription_patient_id` int(17) NOT NULL COMMENT '病人ID',
  `prescription_date` datetime NOT NULL COMMENT '处方时间',
  `whether_money` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '是否缴费',
  `collect_fees_id` int(8) NOT NULL COMMENT '经办员ID(工作人员表)',
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `prescription` */

/*Table structure for table `prescription_detail` */

DROP TABLE IF EXISTS `prescription_detail`;

CREATE TABLE `prescription_detail` (
  `prescription_detail_id` int(17) NOT NULL AUTO_INCREMENT COMMENT '处方详情表',
  `prescription_id` int(17) NOT NULL COMMENT '处方编号(处方表)',
  `drug_apply_id` int(8) NOT NULL COMMENT '物资编号(物资表)',
  `prescription_detail_number` int(8) NOT NULL COMMENT '数量',
  `prescription_total_money` int(8) NOT NULL COMMENT '总额',
  PRIMARY KEY (`prescription_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `prescription_detail` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '挂号表',
  `register_patient_id` int(17) NOT NULL COMMENT '病人编号',
  `register_date` datetime NOT NULL COMMENT '挂号时间',
  `register_money` double NOT NULL COMMENT '挂号费用',
  `scheduling_date_id` int(8) NOT NULL COMMENT '排班ID',
  `collect_fees_id` int(8) NOT NULL COMMENT '经办员ID',
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `register` */

/*Table structure for table `scheduling_date` */

DROP TABLE IF EXISTS `scheduling_date`;

CREATE TABLE `scheduling_date` (
  `scheduling_date_id` int(17) NOT NULL AUTO_INCREMENT COMMENT '排班表',
  `staff_info_id` int(8) NOT NULL COMMENT '医生ID',
  `scheduling_date_time` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '挂号时段',
  `scheduling_date_money` int(8) NOT NULL COMMENT '挂号费用',
  PRIMARY KEY (`scheduling_date_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `scheduling_date` */

/*Table structure for table `sickbed` */

DROP TABLE IF EXISTS `sickbed`;

CREATE TABLE `sickbed` (
  `sickbed_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '病床表',
  `ward_statement` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '状态(使用,预定,空闲)',
  `ward_id` int(8) NOT NULL COMMENT '病房ID',
  PRIMARY KEY (`sickbed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sickbed` */

/*Table structure for table `sickbed_maintain` */

DROP TABLE IF EXISTS `sickbed_maintain`;

CREATE TABLE `sickbed_maintain` (
  `sickbed_maintain_id` int(17) NOT NULL AUTO_INCREMENT COMMENT '病床维护',
  `sickbed_id` int(8) NOT NULL COMMENT '病床ID(病床表)',
  `sickbed_money` int(8) NOT NULL COMMENT '维护费用',
  `maintain_reason` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '损坏原因',
  `damage_people` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '损坏人',
  PRIMARY KEY (`sickbed_maintain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sickbed_maintain` */

/*Table structure for table `staff_info` */

DROP TABLE IF EXISTS `staff_info`;

CREATE TABLE `staff_info` (
  `staff_info_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '工作人员基本信息(医生:doctor)',
  `staff_info_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `staff_info_duty` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '职务',
  `staff_info_education` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '学历',
  `staff_info_sex` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '性别',
  `staff_info_birthday` datetime NOT NULL COMMENT '出生日期',
  `staff_info_nation` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '民族',
  `staff_info_card_no` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '身份证号',
  `staff_info_marriage` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '婚姻状况',
  `staff_info_health` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '健康状况',
  `staff_info_start_work` datetime DEFAULT NULL COMMENT '入职时间',
  `staff_info_address` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '地址',
  `staff_info_phone` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '联系电话',
  `staff_info_email` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '电子邮件',
  `staff_info_job_id` int(8) NOT NULL COMMENT '职位号(科室表)',
  `staff_info_image` blob COMMENT '是工作人员的职业照(可以为空)',
  `staff_info_title` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '实习' COMMENT '专家,实习',
  `staff_info_salary` int(8) NOT NULL COMMENT '薪资',
  PRIMARY KEY (`staff_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `staff_info` */

/*Table structure for table `storing` */

DROP TABLE IF EXISTS `storing`;

CREATE TABLE `storing` (
  `storing_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '入库表',
  `into_depot_date` date NOT NULL COMMENT '入库日期',
  `out_of_date` date NOT NULL COMMENT '过期时间',
  `storing_number` int(8) NOT NULL COMMENT '入库数量',
  `storing_price` int(8) NOT NULL COMMENT '入库单价',
  `storing_detail_id` int(8) NOT NULL COMMENT '物资ID',
  `storing_staff_id` int(8) NOT NULL COMMENT '负责人ID',
  `storing_detail_supplier_id` int(8) NOT NULL COMMENT '供货商ID',
  PRIMARY KEY (`storing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `storing` */

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `supplier_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '供应商表',
  `supplier_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '供应商名称',
  `supplier_address` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '地址',
  `supplier_phone` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '电话',
  `supplier_reputation_level` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '信誉状况',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `supplier` */

insert  into `supplier`(`supplier_id`,`supplier_name`,`supplier_address`,`supplier_phone`,`supplier_reputation_level`) values 

(1,'hyf','深圳腾讯总部','18455546646','优'),

(2,'康鑫','湖南','15456446','差'),

(3,'凉席农','河南','15161656','良');

/*Table structure for table `treatment_project` */

DROP TABLE IF EXISTS `treatment_project`;

CREATE TABLE `treatment_project` (
  `treatment_project_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `treatment_project_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '项目名称',
  `treatment_project_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '诊疗时间',
  `doctor_id` int(8) NOT NULL COMMENT '医生id',
  `treatment_project_patient_id` int(17) NOT NULL COMMENT '病人id',
  `treatment_money` int(8) NOT NULL COMMENT '诊疗费用',
  PRIMARY KEY (`treatment_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `treatment_project` */

/*Table structure for table `user_authority` */

DROP TABLE IF EXISTS `user_authority`;

CREATE TABLE `user_authority` (
  `user_authority_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '用户权限表(权限控制表)',
  `user_authority_name` varchar(48) COLLATE utf8_bin NOT NULL COMMENT '账户',
  `user_authority_pass` varchar(96) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `user_authority_level` int(8) NOT NULL COMMENT '权限等级',
  `user_authority_staff_id` int(8) NOT NULL COMMENT '工作员ID',
  PRIMARY KEY (`user_authority_id`),
  UNIQUE KEY `user_authority_name` (`user_authority_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_authority` */

/*Table structure for table `ward` */

DROP TABLE IF EXISTS `ward`;

CREATE TABLE `ward` (
  `ward_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '病房表',
  `ward_statement` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '状态(使用,预定,空闲)',
  `ward_detail_address` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '病房地址',
  `ward_type` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '病房类型(普通,贵宾,豪华)',
  `ward_price` int(8) NOT NULL COMMENT '病房价格',
  PRIMARY KEY (`ward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ward` */

insert  into `ward`(`ward_id`,`ward_statement`,`ward_detail_address`,`ward_type`,`ward_price`) values 

(1,'使用','3楼102','豪华',100000),

(2,'预定','1楼302','普通',2000),

(3,'空闲','2楼101','贵宾',5000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
