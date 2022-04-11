package com.microservices.bean;

import java.util.List;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.lang.NonNull;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity(name = "Teacher")
@Table(name = "TeacherDetails")
public class Teacher {
	
	
	@NotBlank(message = "Name required")
	private String name;
	@NotBlank(message = "email required")
	@Email
	private String email;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "subject_id", referencedColumnName = "subId")
	private Subject subject;
	
	public Teacher() {
		super();
	}
	
	
	
	public Teacher(@NotBlank(message = "Name required") String name,
			@NotBlank(message = "email required") @Email String email) {
		super();
		this.name = name;
		this.email = email;		
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
