package com.tp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.DatasetDAO;
import com.tp.model.DatasetVO;


@Service
@Transactional
public class DatasetServiceImpl implements DatasetService {
	
	@Autowired
	DatasetDAO datasetDAO;
	
	public void insertDataset(DatasetVO datasetVO)
	{
		this.datasetDAO.insertDataset(datasetVO);
	}
	
	public List searchDataset()
	{
		return this.datasetDAO.searchDataset();
	}
		
	public List findByIdDataset(DatasetVO datasetVO)
	{
		return this.datasetDAO.findByIdDataset(datasetVO);
	}

}
