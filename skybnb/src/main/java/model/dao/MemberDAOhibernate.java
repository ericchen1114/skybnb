package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import antlr.TokenStreamIOException;
import model.bean.MemberBean;
import model.MemberDAO;
import tools.Tools;


//@Repository
public class MemberDAOhibernate implements  MemberDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public MemberBean select(Integer memberID) {
//		this.memberBean=this.getSession().get(MemberBean.class, memberID);
		return this.getSession().get(MemberBean.class, memberID);
		
	}

	@Override
	public MemberBean selectByUsername(String account) {
		return this.getSession().createQuery("from MemberBean where account='"+ account +"'", MemberBean.class).uniqueResult();
	}

	
	public MemberBean insert(MemberBean bean) {
		
		if(bean!=null) {
			String id = bean.getMemberID();
			MemberBean temp = this.getSession().get(MemberBean.class, id);
			if(temp==null) {
				this.getSession().save(bean);
				return bean;
				
			}
		}
		
		
		return bean;
	}
	

	
//	@Override
//	public MemberBean insert(MemberBean bean) {
//		
//
//		
//		Tools tools = new Tools();
//		tools.randID("MN");
//
//		
//		if(bean==null) {
//			String MemberID = bean.getMemberID();
//			MemberBean temp = this.getSession().get(MemberBean.class, MemberID);		
//		
//			if(temp!=null) {
//				bean.setMemberID(tools.randID("MN"));
//				bean.setBonus(0);
//				bean.setAuthority(true);
//				bean.setMemberStatus("0");
//				this.getSession().save(bean);
//				return bean;
//			}
//		}
//
//		return null;
//	}
	
	
	
//	新增資料用
//	@Override
//	public MemberBean insert(String account) {
//		return this.getSession().screateQuery("from MemberBean , MemberBean.class).uniqueResult());
//	}

	


}
