package model;

import java.util.List;

import model.bean.CustomerReportBean;

public interface CustomerReportDAO {
public abstract CustomerReportBean select (String id);
public abstract List<CustomerReportBean> select(boolean status);
public abstract CustomerReportBean insert(CustomerReportBean bean);
public abstract boolean update(String reportNumber,boolean reportStatus);
}
