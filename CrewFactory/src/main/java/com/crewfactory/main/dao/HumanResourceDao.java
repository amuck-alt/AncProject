package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.HumanResourceDomain;

@Mapper
public interface HumanResourceDao {
	public List <HumanResourceDomain> select (String catenum) throws Exception;
	public HumanResourceDomain view (int idx) throws Exception;
	public boolean insert (HumanResourceDomain domain) throws Exception;
	public void update (HumanResourceDomain domain) throws Exception;
	public void delete (int idx) throws Exception;
	public boolean check (HumanResourceDomain domain) throws Exception;
	public HumanResourceDomain find (HumanResourceDomain domain) throws Exception;
}
