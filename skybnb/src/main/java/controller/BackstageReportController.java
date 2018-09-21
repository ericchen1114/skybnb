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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.bean.CustomerReportBean;
import model.service.CustomerReportService;

@Controller
public class BackstageReportController {
	@Autowired
	private CustomerReportService customerReportService;

	@RequestMapping(path = { "/backstagereportlist.controller" })
	public String backstagereportlist(Model model) {
		List<CustomerReportBean> list = customerReportService.select(false);

				model.addAttribute("reportlist", list);
		return "backstage.customerreport";

	}
	@RequestMapping(path = { "/backstagereportfinishedlist.controller" })
	public String backstagereportfinishedlist(Model model) {
		List<CustomerReportBean> list = customerReportService.select(true);

				model.addAttribute("reportfinishedlist", list);
		return "backstage.customerreportffinished";

	}
	
	@RequestMapping(value ="/reportupdate.contrller", method=RequestMethod.GET)
	public String reportupdate(@RequestParam("num") String num , Model model) {
		System.out.println(num);
		System.out.println("hahahahaha");
		CustomerReportBean bean = new CustomerReportBean();
		bean.setReportNumber(num);
		bean.setReportStatus(true);
		boolean object = customerReportService.update(bean);
				if(object) {
					CustomerReportBean customerReportBean= null;
					List<CustomerReportBean> list = customerReportService.select(false);
					System.out.println("Test:" + list.toString());
					model.addAttribute("reportlist", list);
					return "backstage.customerreport";
				}else {
					return "report.success";
				}
				
				
	}
}
