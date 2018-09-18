package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.bean.HouseInformationBean;
import model.dao.OrderListDAOHibernate;
import model.service.OrderListService;



//import model.OrderListJoin;


@Controller
@SessionAttributes(names= {"user"})
public class OrderListHouseInforSelectController {
	
	@Autowired
	private OrderListService orderListService;
	
	@Autowired
	private OrderListDAOHibernate orderListDAOHibernate;
	
	@SuppressWarnings("unused")
	@RequestMapping(path={"/orderlistdetail.controller"})
	public String method(Model model,String orderHouseNumber, String houseID) {
		System.out.println("----------------Enter OrderListHouseInforSelectController--------------");
		System.out.println("orderHouseNumber:"+orderHouseNumber);
		
//								
//		OrderListBean  OrderLisResult = orderListDAOHibernate.selectByOrderHouseNumber(orderHouseNumber);
//		System.out.println("OrderLisResult:"+OrderLisResult);
//		
//		HouseInformationBean HouseInforResult =orderListDAOHibernate.houseinforselect(OrderLisResult.getHouseID());
//		System.out.println("HouseInforResult:"+HouseInforResult);
//		
//		if (OrderLisResult!= null && HouseInforResult!= null ) {
//		model.addAttribute("OrderLisResult", OrderLisResult);
//		model.addAttribute("HouseInforResult",HouseInforResult);
//		
//		//System.out.println("result:" + result);
//		System.out.println("select success!!");
//		System.out.println("joinselect success!!");
//		
//		}
	
		return "orderlistdetail.servlet";
	}
}



//OrderListJoin bean2 = null;
//List<OrderListJoin> result2 = skybnbService.select1(bean2);
//if (result2 == null) {
////	errors.put("showError", "No orderlist");
//	System.out.println("select error!!");
//
//} else {
//	model.addAttribute("select", result2);
//	System.out.println("select success!!");
//}
//return "orderlistdetail.servlet";
//
