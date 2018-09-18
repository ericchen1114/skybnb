package controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.bean.MemberBean;
import model.service.RegisterService;
import tools.Tools;

@Controller
// @SessionAttributes(names={})
public class RegisterController {
	// @Autowired
	// private RegisterService registerService;

	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}

	@RequestMapping(value = "/Register.controller", method = RequestMethod.POST)

	public String method(Model model, MemberBean bean) {
		System.out.println("TEST");
//		System.out.println(model.toString());
		System.out.println(bean.toString());

		// Map<String, String> errors = new HashMap<>();
		// model.addAttribute("errors", errors);

		// if (errors != null && !errors.isEmpty()) {
		// return "insert.error";
		// }

		// Tools tools = new Tools();
		// bean.setMemberID(tools.randID("MN"));
		// bean.setBonus(0);
		// bean.setAuthority(true);
		// bean.setMemberStatus("1");

		// MemberBean result = registerService.insert(bean);

		// if(result==null) {
		// errors.put("xxx1", "Insert error");
		// return "insert.error";
		// }
		// else {
		// System.out.println(bean);
		// model.addAttribute("insert", result);
		//
		// System.out.println("this RegisterControlle after result==null");
		//
		// }
		// System.out.println("this RegisterControlle return \"insert.success\"");
		return "insert.success";

	}

}
