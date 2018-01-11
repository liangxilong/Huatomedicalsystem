package com.bdqn.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author kx
 *	工作人员信息
 */
public class StaffInfo implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2806382937003833313L;
	// 编号
	private Integer staffInfoId;
	// 名称
	private String staffInfoName;
	// 职务
	private String staffInfoDuty;
	// 学历
	private String staffInfoEducation;
	// 性别
	private String staffInfoSex;
	// 出生日期
	private Date staffInfoBirthday;
	// 名族
	private String staffInfoNation;
	// 身份证号
	private String staffInfoCardNo;
	// 婚姻状况
	private String staffInfoMarriage;
	// 健康状况
	private String staffInfoHealth;
	// 入职时间
	private Date staffInfoStartWork;
	// 地址
	private String staffInfoAddress;
	// 联系电话
	private String staffInfoPhone;
	// 电子邮件
	private String staffInfoEmail;
	// 职位 
	private Job job; 
	// 照片
	private String staffInfoImage;
	// 职称
	private String staffInfoTitle;
	// 薪资
	private Double staffInfoSalary;
	
	public Integer getStaffInfoId() {
		return staffInfoId;
	}
	public void setStaffInfoId(Integer staffInfoId) {
		this.staffInfoId = staffInfoId;
	}
	public String getStaffInfoName() {
		return staffInfoName;
	}
	public void setStaffInfoName(String staffInfoName) {
		this.staffInfoName = staffInfoName;
	}
	public String getStaffInfoDuty() {
		return staffInfoDuty;
	}
	public void setStaffInfoDuty(String staffInfoDuty) {
		this.staffInfoDuty = staffInfoDuty;
	}
	public String getStaffInfoEducation() {
		return staffInfoEducation;
	}
	public void setStaffInfoEducation(String staffInfoEducation) {
		this.staffInfoEducation = staffInfoEducation;
	}
	public String getStaffInfoSex() {
		return staffInfoSex;
	}
	public void setStaffInfoSex(String staffInfoSex) {
		this.staffInfoSex = staffInfoSex;
	}
	public Date getStaffInfoBirthday() {
		return staffInfoBirthday;
	}
	public void setStaffInfoBirthday(Date staffInfoBirthday) {
		this.staffInfoBirthday = staffInfoBirthday;
	}
	public String getStaffInfoNation() {
		return staffInfoNation;
	}
	public void setStaffInfoNation(String staffInfoNation) {
		this.staffInfoNation = staffInfoNation;
	}
	public String getStaffInfoCardNo() {
		return staffInfoCardNo;
	}
	public void setStaffInfoCardNo(String staffInfoCardNo) {
		this.staffInfoCardNo = staffInfoCardNo;
	}
	public String getStaffInfoMarriage() {
		return staffInfoMarriage;
	}
	public void setStaffInfoMarriage(String staffInfoMarriage) {
		this.staffInfoMarriage = staffInfoMarriage;
	}
	public String getStaffInfoHealth() {
		return staffInfoHealth;
	}
	public void setStaffInfoHealth(String staffInfoHealth) {
		this.staffInfoHealth = staffInfoHealth;
	}
	public Date getStaffInfoStartWork() {
		return staffInfoStartWork;
	}
	public void setStaffInfoStartWork(Date staffInfoStartWork) {
		this.staffInfoStartWork = staffInfoStartWork;
	}
	public String getStaffInfoAddress() {
		return staffInfoAddress;
	}
	public void setStaffInfoAddress(String staffInfoAddress) {
		this.staffInfoAddress = staffInfoAddress;
	}
	public String getStaffInfoPhone() {
		return staffInfoPhone;
	}
	public void setStaffInfoPhone(String staffInfoPhone) {
		this.staffInfoPhone = staffInfoPhone;
	}
	public String getStaffInfoEmail() {
		return staffInfoEmail;
	}
	public void setStaffInfoEmail(String staffInfoEmail) {
		this.staffInfoEmail = staffInfoEmail;
	}
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public String getStaffInfoImage() {
		return staffInfoImage;
	}
	public void setStaffInfoImage(String staffInfoImage) {
		this.staffInfoImage = staffInfoImage;
	}
	public String getStaffInfoTitle() {
		return staffInfoTitle;
	}
	public void setStaffInfoTitle(String staffInfoTitle) {
		this.staffInfoTitle = staffInfoTitle;
	}
	public Double getStaffInfoSalary() {
		return staffInfoSalary;
	}
	public void setStaffInfoSalary(Double staffInfoSalary) {
		this.staffInfoSalary = staffInfoSalary;
	}
	
	
}