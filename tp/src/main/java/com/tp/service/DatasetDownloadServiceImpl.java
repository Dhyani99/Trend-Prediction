package com.tp.service;

import com.tp.model.DatasetDownloadVO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.DatasetDownloadDAO;

@Service
@Transactional
public class DatasetDownloadServiceImpl implements DatasetDownloadService{
	
	@Autowired
	DatasetDownloadDAO datasetDownloadDAO;

	public void insertDatasetDownload(DatasetDownloadVO datasetDownloadVO, int totalPatents)
	{
		this.datasetDownloadDAO.insertDatasetDownload(datasetDownloadVO,totalPatents);
	}

	
	public List searchDatasetDownload() {
		// TODO Auto-generated method stub
		return this.datasetDownloadDAO.searchDatasetDownload();
		
	}
	
	
}
