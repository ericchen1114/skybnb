package model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import antlr.TokenStreamIOException;
import model.bean.CustomerReportBean;
import model.bean.MemberBean;
import model.BackstageMemberDAO;
import tools.Tools;


@Repository
public class BackstageMemberDAOhibernate implements  BackstageMemberDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<MemberBean>select() {
		 String Hsql= "from  MemberBean m "+" where c.reportStatus = :reportStatus";
		 String Hsqlall= "from  MemberBean ";
		try {
			 System.out.println(this.getSession().createQuery(Hsqlall,MemberBean.class).list());

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		// HQL語法
		List<MemberBean> list = this.getSession().createQuery(Hsqlall,MemberBean.class).list();
		return list;
	}

	@Override
	public MemberBean upDate(String membercaacount, String status) {
		
		return null;
	}
	
	
	



	


}
