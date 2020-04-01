package com.tp.service;

import java.util.List;

import com.tp.model.DatasetVO;

public interface DatasetService {

	public void insertDataset(DatasetVO datasetVO);
	
	public List searchDataset();
	
	public List findByIdDataset(DatasetVO datasetVO);

	
}
