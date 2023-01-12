package com.hibernate;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class CustomerRepo 
{
	private static Session ses;
	private static Transaction t;
	static
	{
		SessionFactory fact=new Configuration().configure().buildSessionFactory();
		ses=fact.openSession();
		t=ses.getTransaction();
	}
	public static void saveCustomer(Customer cust)
	{
		t.begin();
		ses.save(cust);
		t.commit();
	}
	public static List<Customer> getCustomerList()
	{
		Query<Customer> q=ses.createQuery("from Customer");
		List<Customer> clist=q.list();
		return clist;
	}
	public static void deleteRecord(int cid)
	{
		Customer c=ses.get(Customer.class,cid);
		t.begin();
		ses.delete(c);
		t.commit();
	}
	public static Customer getCustomer(int cid)
	{
		Customer c=ses.get(Customer.class,cid);
		return c;
	}
	public static void updateCustomer(Customer ncust)
	{
		Customer ocust=ses.get(Customer.class,ncust.getCid());
		t.begin();
		ocust.setFirstname(ncust.getFirstname());
		ocust.setLastname(ncust.getLastname());
		ocust.setAddress(ncust.getAddress());
		ocust.setPhone(ncust.getPhone());
		ocust.setEmail(ncust.getEmail());
		t.commit();
	}
	public static void deleteCustomer(int cid)
	{
		Customer c=ses.get(Customer.class,cid);
		t.begin();
		ses.delete(c);
		t.commit();
	}
	
}
