package com.oracle.OMG.service.joService;

import java.util.List;

import com.oracle.OMG.dto.Sales;
import com.oracle.OMG.dto.SalesDetail;

public interface JoSalService {

	List<SalesDetail>      getListSalesInquiry(SalesDetail sales);
	List<SalesDetail>      searchSalesInquiry(SalesDetail sales);
	int                    getTotalSalesInquiry();
	int                    getSearchTotalSalesInquiry(SalesDetail sales);
	int                    getSortTotalSalesInquiry(int sales_status);
	List<SalesDetail>      sortSalesInquiry(SalesDetail salesDetail);
	int                    deleteSalesDetail(SalesDetail salesDetails);
	List<SalesDetail>      getListCustCode(int custstyle);
	int                    insertSales(SalesDetail sales);
	List<SalesDetail>      getSalesDetail(SalesDetail sales);
	int                    getTotalSalesDetail(SalesDetail sales);
	SalesDetail     	   getSalesData(SalesDetail sales);
	int                    UpdateSales(SalesDetail sales);
	List<SalesDetail>      getListProduct();
	int                    insertSalesDetail(SalesDetail sales);


}
