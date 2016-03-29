package com.epam.jmp.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="employee_personal_info")
public class EmployeePersonalInfo {

	@Column(name="birth_date")
	private Date birthDate;

	@Temporal(TemporalType.DATE)
	private String sex;
	
	@OneToOne
	@JoinColumn(name="id_employee")
	private Employee employee;

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
}
