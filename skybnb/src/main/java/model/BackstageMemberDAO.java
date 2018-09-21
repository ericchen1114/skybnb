package model;

import java.util.List;

import model.bean.MemberBean;

public interface BackstageMemberDAO {
	public abstract List<MemberBean> select();
	
	public abstract MemberBean upDate(String membercaacount,String status);
	
	
	

}
