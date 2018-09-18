package model;

import model.bean.MemberBean;

public interface MemberDAO {
	public abstract MemberBean select(Integer memberID);
	
	public abstract MemberBean selectByUsername(String account);
	
	public abstract MemberBean insert(MemberBean bean);
	
	
	

}
