package com.min.Dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
	
	private String name;
	private String id;
	private String pw;
	private String email1;
	private String email2;
	private String auth;
	
	private String ip;
	private Date regdate;
	
	
	

}
