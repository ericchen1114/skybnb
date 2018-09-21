package controller;

import java.util.List;

import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.bean.MemberBean;
import model.service.BackstageMemberService;

@Controller
public class BackstageMemberController {
	@Autowired BackstageMemberService bms;
@RequestMapping(path= {"/backstagemembermanagment.controller"})
public String memberLoading(Model model) {
     List<MemberBean> list = bms.selectAll();
     
     System.out.println(list.toString());
     model.addAttribute("memberall",list);
	
	return "backstage.memberall";
}
}
