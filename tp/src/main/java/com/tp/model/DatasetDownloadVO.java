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
@Table(name="dataset_download")
public class DatasetDownloadVO {
	
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="domain_vo")
	private DomainVO domainVO;
	
	@Column(name="totalPatents")
	private int totalPatents;
	
	@Column(name="status")
	private boolean status=false;

	
	public DomainVO getDomainVO() {
		return domainVO;
	}

	public void setDomainVO(DomainVO domainVO) {
		this.domainVO = domainVO;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTotalPatents() {
		return totalPatents;
	}

	public void setTotalPatents(int totalPatents) {
		this.totalPatents = totalPatents;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
