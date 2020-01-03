package com.tp.dao;


import java.util.List;

import com.tp.model.DatasetVO;

public interface DatasetDAO {

	public void insertDataset(DatasetVO datasetVO);
	
	public List findByIdDataset(DatasetVO datasetVO);
	
	public List searchDataset();
	
}
