package com.online.dao;

import java.io.Serializable;
import java.util.List;

import com.online.entity.Publication;

public interface IPublicationDao extends Serializable {

	void save(Publication publication);
	List<Publication> findAll();
	Publication getPublication(int id);
	
}
