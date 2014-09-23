package com.online.controllers;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.online.dao.IPublicationDao;
import com.online.entity.Publication;
import com.online.entity.Publish;

@Controller
public class PublishController {

	@Autowired
	private IPublicationDao dao;
	
	@ModelAttribute("publishType")
	public Publish construct()
	{
		return new Publish();
	}
	
	@ModelAttribute("loadData")
	public Publication construc()
	{
		return new Publication();
	}
	
	@RequestMapping(value = "/publish", method = RequestMethod.GET)
    public ModelAndView load() {
		
        return new ModelAndView("/select_category");
    }
 	
	@RequestMapping(value = "/define_typePublish", method = RequestMethod.POST)
    public String define_type(@ModelAttribute("publishType") Publish publish) {
		System.out.println(publish.getTypePublishing());
		
		return "application_form";
    }
	
	@RequestMapping(value="/submit_publish_form", method = RequestMethod.POST)
	public String submit_publish_form(@ModelAttribute("loadData") Publication publication)
	{
		publication.setPublicationDate(new Date());
		dao.save(publication);
		System.out.println(publication.getMinimunStay());
		return "upload_images";
	}
	
	 @RequestMapping(value = "/view_dep_rent", method = RequestMethod.GET)
	    public ModelAndView viewRentDep(ModelMap model) {
		 	
		 	model.put("publications", dao.findAll());
	        return new ModelAndView("/show_dep_rent",model);
	    }
	
	
	 @RequestMapping(value = "/publicationDetails/{idPublication}.htm", method = RequestMethod.GET)
	 public ModelAndView publication_details(@PathVariable("idPublication") String idPublication, ModelMap model)
	 {
		 int idPubli = Integer.parseInt(idPublication);
		 model.put("publication", dao.getPublication(idPubli));
		 return new ModelAndView("/publication_details", model); 
	 }
	 
	
 }
