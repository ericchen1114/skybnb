package model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import model.MemberDAO;
import model.bean.MemberBean;

//@Service
public class RegisterService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberBean insert(MemberBean bean) {
		MemberBean result = null;
		if(bean!=null) {
			result = memberDAO.insert(bean);
			System.out.println("Before Service");
		}
		System.out.println("After Service" + result);
		return result;
	}
	
	
	
}
