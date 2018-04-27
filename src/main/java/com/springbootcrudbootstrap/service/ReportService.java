package com.springbootcrudbootstrap.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootcrudbootstrap.dao.GuestDao;
import com.springbootcrudbootstrap.model.Guest;

@Service
@Transactional
public class ReportService {
	
	@Autowired 
	GuestDao guestDao;
	
	public List<Map<String, ?>> findAllReportCustomer(){
		List<Map<String,?>> listAllReportGuest = new ArrayList<Map<String,?>>();
		List<Guest> listGuest = (List<Guest>) guestDao.findAll();
		int number = 0;
		for (Guest guest : listGuest) {
			Map<String, Object> m = new HashMap<String,Object>();
			m.put("name", guest.getName());
			m.put("address", guest.getAddress());
			m.put("employment", guest.getEmployment());
			listAllReportGuest.add(m);
			number ++;
		}
		return listAllReportGuest;
	}
	
}
