package com.springbootcrudbootstrap.service;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.springbootcrudbootstrap.bean.GuestBean;
import com.springbootcrudbootstrap.dao.GuestDao;
import com.springbootcrudbootstrap.model.Guest;

@Service
@Transactional
@Repository
public class GuestService {
	
	@Autowired
	GuestDao guestDao;
	
	private static final String KEY = "Guest";
	 
	private RedisTemplate<String, Object> redisTemplate;
    private HashOperations<String, Long, Guest> hashOperations;
	
	@Autowired
	public GuestService(RedisTemplate<String, Object> redisTemplate) {
		this.redisTemplate = redisTemplate;
	}
 
	@PostConstruct
	private void init() {
		hashOperations = redisTemplate.opsForHash();
	}
	
	public List<Guest> findAll() {
		List<Guest> listGuest = (List<Guest>) guestDao.findAllByOrderByIdAsc();
		Map<Long, Guest> listGuests = hashOperations.entries(KEY);
		for(Guest guest:listGuests.values()){
			listGuest.add(guest);
		}
		return listGuest;
	}

	public Guest findId(long id) {

		return guestDao.findByGuestId(id);
	}
	
	public Guest findGuestName(String employment) {

		return guestDao.findByEmployment(employment);
	}

	public void save(Guest guest) {
			guestDao.save(guest);
	}

	public void deleteById(long id) {

		guestDao.deleteById(id);
	}
	
	public Guest saveGuest(GuestBean param) {
		Guest guest = new Guest();
		guest.setName(param.getName());
		guest.setAddress(param.getAddress());
		guest.setEmployment(param.getEmployment());
		save(guest);
		return guest;
	}
	
	public Guest updateGuest(long id,GuestBean param){
		Guest guest = findId(id);
		guest.setName(param.getName());
		guest.setAddress(param.getAddress());
		guest.setEmployment(param.getEmployment());
		save(guest);
		return guest;
	}
	public Boolean isRecordFull(){
		List<Guest>listGuest = (List<Guest>) guestDao.findAll();
		if(listGuest.size() >= 20){
			return true;
		}
		return false;
	}
	
	public List<Guest> findGuestSearch(String mySearch,int page,int limitSize) {
		if(mySearch == null || mySearch.equals("")){
			return guestDao.listGuest(new PageRequest(page-1,limitSize,new Sort(Sort.Direction.ASC, "name")));
		}
		List<Guest> listGuest = guestDao.listGuestSearch(mySearch,new PageRequest(page-1,limitSize,new Sort(Sort.Direction.ASC, "name")));
		return listGuest;
	}
}
