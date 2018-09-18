package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.bean.CustomerReportBean;
import model.service.CustomerReportService;

@Controller
@ComponentScan

public class BackstageCustomerReportUpdateController {
	@Autowired
	private CustomerReportService customerReportService;
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
					List<CustomerReportBean> list = customerReportService.select(bean);
					System.out.println("Test:" + list.toString());
					model.addAttribute("reportlist", list);
					return "backstage.customerreport";
				}else {
					return "report.success";
				}
				
				
	}
}
