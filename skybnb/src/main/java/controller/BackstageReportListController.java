package controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.bean.CustomerReportBean;
import model.service.CustomerReportService;

@Controller
public class BackstageReportListController {
	@Autowired
	private CustomerReportService customerReportService;

	@RequestMapping(path = { "/backstagereportlist.controller" })
	public String backstageInit(Model model) {
		CustomerReportBean bean = null;
		List<CustomerReportBean> list = customerReportService.select(bean);
//		System.out.println("Test:" + list.toString());
//		List<Object[]> list2 = customerReportService.joinData();	
//	   for(Object[] objects:list2) {
//		   System.out.println(Arrays.toString(objects));
//	   }

				model.addAttribute("reportlist", list);
		return "backstage.customerreport";

	}
}
