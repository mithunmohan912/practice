package com.hibernate.sequence;

import java.io.Serializable;
import java.util.Properties;

import org.hibernate.HibernateException;
import org.hibernate.MappingException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.enhanced.SequenceStyleGenerator;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.type.LongType;
import org.hibernate.type.Type;

public class CustSquence  extends SequenceStyleGenerator{
	
	public static final String prefix = "mithun_";
	
	@Override
	public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
		// TODO Auto-generated method stub
		return prefix+super.generate(session, object);
	}
	
	@Override
	public void configure(Type type, Properties params, ServiceRegistry serviceRegistry) throws MappingException {
		// TODO Auto-generated method stub
		super.configure(LongType.INSTANCE, params, serviceRegistry);
	}

}
