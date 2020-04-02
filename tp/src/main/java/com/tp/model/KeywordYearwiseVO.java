package com.tp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="keyword_yearwise")
public class KeywordYearwiseVO {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="domain_id")
	private DomainVO domainVO;

	@Column(name="keyword")
	private String keyword;
	
	@Column(name="year")
	private String year;
	
	@Column(name="patent")
	private String patent;
	
	@Column(name="frequency")
	private String frequency;
	
	/*
	 * @Column(name="status") private boolean status=false;
	 * 
	 * public boolean isStatus() { return status; }
	 * 
	 * public void setStatus(boolean status) { this.status = status; }
	 */

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPatent() {
		return patent;
	}

	public void setPatent(String patent) {
		this.patent = patent;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public DomainVO getDomainVO() {
		return domainVO;
	}

	public void setDomainVO(DomainVO domainVO) {
		this.domainVO = domainVO;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	
}
