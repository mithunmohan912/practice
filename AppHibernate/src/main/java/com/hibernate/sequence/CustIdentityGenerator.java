package com.hibernate.sequence;

import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import java.util.stream.IntStream;

import javax.persistence.criteria.Order;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;
import org.hibernate.id.IdentityGenerator;

public class CustIdentityGenerator implements IdentifierGenerator{

	@Override
	public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
		// TODO Auto-generated method stub
		
//		session.createQuery("select * from "+Object.class.get)
//		String str = session.getEntityPersister(object.getClass().getName(), object.getClass()).getIdentifierPropertyName();
//		Criteria criteria = session.createCriteria(object.getClass());
//		criteria.setProjection(Projections.rowCount());
//		List list= session.createCriteria(object.getClass()).add(Projection.);
//		List li = (List) session.createQuery(str);
		return Math.random() + "test";
	}
	
	

}
