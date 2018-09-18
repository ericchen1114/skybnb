package model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.OrderListDAO;
import model.bean.HouseInformationBean;
import model.bean.OrderHouseListBean;;


@Repository
public  class OrderListDAOHibernate implements OrderListDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();	
	}
	//-------------------------orderlist table-----------------------
	@Override
	public List<OrderHouseListBean> select() {
		System.out.println("Hibernate selectAll()");
		return this.getSession().createQuery("from OrderListBean",OrderHouseListBean.class).list();
	}
	
	@Override
	public OrderHouseListBean selectByOrderHouseNumber(String orderHouseNumber) {
		System.out.println("Hibernate selectByOrderHouseNumber");
		return this.getSession().get(OrderHouseListBean.class, orderHouseNumber);
	}
	
	@Override
	public OrderHouseListBean update(String orderHouseNumber, Integer starCount, String comment,Boolean commentStatus) {
		System.out.println("Up"+orderHouseNumber);
//		OrderListBean temp = this.getSession().get(OrderListBean.class, orderHouseNumber);
		 
		OrderHouseListBean list = this.getSession().get(OrderHouseListBean.class,orderHouseNumber);
		 
		 System.out.println(list.toString());
		
		if (list != null) {
           System.out.println("-----list is not null-----");
           list.setStarCount(starCount);
           list.setComment(comment);
           list.setCommentStatus(commentStatus);
		}
		return list;

		
	}
	
//	private final String selectByOrderHouseNumber = "from OrderListBean  WHERE orderHouseNumber = :orderHouseNumber ";
//	 @Override
//	 public OrderListBean selectByOrderHouseNumber(String orderHouseNumber) {    
//	  return this.getSession().createQuery(selectByOrderHouseNumber, OrderListBean.class)
//			  .setParameter("orderHouseNumber",orderHouseNumber).uniqueResult();
//	 }
	 
	
	 private final String selectBymemberID = "from OrderListBean  WHERE memberID = :memberID ";
	 @Override
	 public List<OrderHouseListBean> selectBymemberID(String memberID) {    
	  return this.getSession().createQuery(selectBymemberID, OrderHouseListBean.class)
			  .setParameter("memberID",memberID).list();
	 }
	 
	 @Override
		public OrderHouseListBean insert(OrderHouseListBean bean) {

			if(bean!=null) {
				bean.getStarCount();
				return (OrderHouseListBean) this.getSession().save(bean);
//				String id = bean.getOrderHouseNumber();
//				OrderListBean temp = this.getSession().get(OrderListBean.class, id);
//				if(temp==null) {
//					this.getSession().save(bean);
//					return bean;
//				}
			}
			return null;
		}
	 
	 //---------------HouseInformation table-----------------------------
	@Override
	public List<HouseInformationBean> houseinforselect() {
		
		return this.getSession().createQuery("from HouseInformationBean",HouseInformationBean.class).list();
	}
	@Override
	public HouseInformationBean houseinforselect(String houseID) {
		// TODO Auto-generated method stub
		return this.getSession().get(HouseInformationBean.class,houseID );
	}

	
	
	
//	private final String houseinforselect = "from HouseInformationBean  WHERE houseID = :houseID ";
//	 @Override
//	 public HouseInformationBean houseinforselect(String houseID) {    
//	  return this.getSession().createQuery(houseinforselect, HouseInformationBean.class)
//			  .setParameter("houseID",houseID).uniqueResult();
//	 }

	//	-----------測試HQL inner join----------------
//	@Override
//	public List<?> select1() {
//		// "Select oh.orderHouseNumber,hi.houseName,hi.houseType,oh.orderDate,oh.checkInDate,oh.checkOutDate,oh.numberOfPeople,oh.bonus,oh.checkoutAmount,oh.starCount,oh.comment "+
//		String nativesql = " From OrderHouseList as oh inner join HouseInformation as hi on oh.houseID=hi.houseID " ;
//		List<?> list = this.getSession().createQuery(nativesql).list();
//		
//		System.out.println("list: " + list.toString());
//		
//		return this.getSession().createQuery(nativesql).list();
//	}
//	@Override
//	public OrderListJoin select1(String orderHouseNumber) {
//		// TODO Auto-generated method stub
//		return this.getSession().get(OrderListJoin.class,orderHouseNumber );
//	}
	
//	-----------測試NativeSQL inner join----------------
	
}
