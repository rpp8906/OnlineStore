package com.online.dao;



import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.online.entity.Publication;

@Repository
@Transactional
public class PublicationDao implements IPublicationDao {

	private static final long serialVersionUID = 1L;
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public void save(Publication publication) {
		sessionFactory.getCurrentSession().save(publication);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Publication> findAll() {
	
		return sessionFactory.getCurrentSession().createCriteria(Publication.class).list();
	     
	}
	
	public Publication getPublication(int id)
	{
		 return (Publication) sessionFactory.getCurrentSession().createCriteria(Publication.class)
	                .add(Restrictions.eq("idPublication", id)).uniqueResult();
	}

}
