package com.tp.service;

import java.util.List;

import com.tp.model.DatasetDownloadVO;

public interface DatasetDownloadService {

	public void insertDatasetDownload(DatasetDownloadVO datasetDownloadVO, int totalPatents);

	public List searchDatasetDownload();

	//public void getPatentNumber(String domainName);
}
