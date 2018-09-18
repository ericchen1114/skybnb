package controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.activation.FileDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.bean.CustomerReportBean;
import model.service.CustomerReportService;
import tools.Tools;

@Controller
@ComponentScan
public class CustomerReportController {
//	@Autowired
//	private ApplicationContext context;
	@Autowired
	private CustomerReportService customerReportService;

	@RequestMapping(path = { "/report.controller" })
	public String method(@RequestParam("reporttitle")String reporttitle , String reportmessage,String MemberReport ,String HouseMember ,  Model model) {
	
		Map<String, String> errorMap = new HashMap<>();
		model.addAttribute("errorMsgs", errorMap);
		if (reporttitle == null || reporttitle.length() == 0) {
			// errorMap.put("titleError"," title filed blank !!" );
			errorMap.put("titleError", "Title FileDataSource blank !!");
		}
		if (reportmessage == null || reportmessage.length() == 0) {
			errorMap.put("messageError", " Message FileDataSource blank !!");
		}
		if (errorMap != null && !errorMap.isEmpty()) {
			return "report.error";
		} else {
			CustomerReportBean bean = new CustomerReportBean();
			Tools tools = new Tools();
			String id = tools.randID("RN");
			bean.setReportNumber(id);
			bean.setHouseMember(HouseMember);
			bean.setMemberReport(MemberReport);
			bean.setReportTitle(reporttitle);
			bean.setReportDiscription(reportmessage);
			bean.setReportStatus(false);
			customerReportService.insert(bean);
			return "report.success";

		}

	}
}
