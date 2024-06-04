package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.HumanResourceDao;
import com.crewfactory.main.domain.HumanResourceDomain;

@Service
public class HumanResourceService {
	
	@Autowired
	HumanResourceDao dao;
	
	public List <HumanResourceDomain> select (String catenum) throws Exception {
		return dao.select(catenum);
	}
	public HumanResourceDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	public boolean insert (HumanResourceDomain domain) throws Exception {
		return dao.insert(domain);
	}
	public void update (HumanResourceDomain domain) throws Exception {
		dao.update(domain);
	}
	public void delete (int idx) throws Exception {
		dao.delete(idx);
	}
	public boolean check (HumanResourceDomain domain) throws Exception {
		return dao.check(domain);
	}
	public HumanResourceDomain findInsert (HumanResourceDomain domain) throws Exception {
		return dao.find(domain);
	}

}
