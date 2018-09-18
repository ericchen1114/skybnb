package controller;

import java.time.MonthDay;

import javax.jws.WebParam.Mode;
import javax.servlet.jsp.JspTagException;
import javax.xml.ws.Response;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
@Controller
public class JaaxTestController {

@RequestMapping(path = {"/Score.Controller"})
//	@ResponseBody
    public String saveHosting( String fname ,String lname ,Model model) 
{
      
   
		System.out.println("123");
		System.out.println(fname);
		System.out.println(lname);
		
return"report.success";
}

}