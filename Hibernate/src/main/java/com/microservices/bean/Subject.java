package com.microservices.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "Subject")
@Table(name="SubjectDetails")
public class Subject {
	
	@NotBlank(message = "subject name required")
	private String subjectName;
	@OneToOne(mappedBy = "subject")
	@JsonIgnore
	private Teacher teacher;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long subId;
	
	
	public Subject() {
		super();
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public long getSubId() {
		return subId;
	}
	public void setSubId(long subId) {
		this.subId = subId;
	}
	
	
	
	
}
