package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import model.bean.OrderHouseListBean;
import model.service.OrderListService;
import tools.OrderListJoin;


@Controller
//@SessionAttributes(names= {"select"})
public class OrderListController {
	@Autowired
	private OrderListService orderListService;

	@RequestMapping(path = { "/orderlistselect.controller" })
	public String method(Model model ,OrderHouseListBean bean ) {
		// System.out.println("BindingResult=" + bindingResult);
		
//		System.out.println("123");

//		Map<String, String> errors = new HashMap<>();
//		model.addAttribute("errorMsgs", errors);
//
//		// 根據Model執行結果呼叫View
//

		List<OrderHouseListBean> result = orderListService.select(bean);
//		if (result == null) {
//			errors.put("showError", "No orderlist");
//			System.out.println("select error!!");
//
//		} else {
			model.addAttribute("select", result);
			System.out.println("select success!!");
//		}
//		
//		List<Object[]> list= orderListService.join();
//	    System.out.println(list.toString());
		return "insert.success";
		
		//-----------測試NativeSQL inner join----------------
		

		

	}

}
