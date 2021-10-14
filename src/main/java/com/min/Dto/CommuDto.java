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
public class CommuDto {
	
	private int seq;
	private String title;
	private String content;
	private Date regdate;
	private int renum;
	private String id;

}
