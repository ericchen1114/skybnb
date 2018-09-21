package model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import model.OrderListDAO;
import model.bean.OrderHouseListBean;


@Service
public class OrderListService {
	
	@Autowired
	private OrderListDAO orderListDao;
	
	public List<OrderHouseListBean>select(OrderHouseListBean bean){
//		System.out.println("bean.getOrderHouseNumber():" + bean.getOrderHouseNumber());
		List<OrderHouseListBean> result = null;
			if(bean!=null && bean.getOrderHouseNumber()!="") {
				OrderHouseListBean temp = (OrderHouseListBean) orderListDao.select();
				if(temp!=null) {
					result= new ArrayList<OrderHouseListBean>();
					result.add(temp);
				}
			}else {
				result=orderListDao.select();
			}
			return result;
	}
	//-----------測試NativeSQL inner join----------------

	
	
}
