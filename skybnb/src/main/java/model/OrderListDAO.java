package model;

import java.util.List;

import model.bean.HouseInformationBean;
import model.bean.OrderHouseListBean;;


public interface OrderListDAO {
	public abstract OrderHouseListBean selectByOrderHouseNumber(String orderHouseNumber);	
	public abstract List<OrderHouseListBean> select();	
	public abstract List<OrderHouseListBean> selectBymemberID(String memberID);
	public abstract OrderHouseListBean insert(OrderHouseListBean bean);
	public abstract OrderHouseListBean update(String orderHouseNumber,Integer starCount, String comment,Boolean commentStatus);
	
	public abstract List<HouseInformationBean> houseinforselect();
	public abstract HouseInformationBean houseinforselect(String houseID);
	//-----------測試NativeSQL inner join----------------
//	public abstract OrderListJoin select1(String orderHouseNumber);
//	public abstract List<?> select1();
	
	
	
}
