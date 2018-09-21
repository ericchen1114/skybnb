package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.BackstageMemberDAO;
import model.bean.MemberBean;

@Service
public class BackstageMemberService {
	@Autowired BackstageMemberDAO backstageMemberDAO;
public List<MemberBean> selectAll(){
	List<MemberBean> list = backstageMemberDAO.select();
	return list;
}
}
