package com.springbootcrudbootstrap.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.springbootcrudbootstrap.model.Guest;

public interface GuestDao  extends CrudRepository<Guest, Long> {
	@Query("select u from Guest u where u.id = ?1")
	public Guest findByGuestId(Long id);
	
	@Query("select u from Guest u where u.employment = ?1")
	public Guest findByEmployment(String employment);
	
	public List<Guest> findAllByOrderByIdAsc();
	
	public Guest findByName(String name);
	
	@Query(value= "select u from Guest u where lower(u.name) like lower(concat('%', :mySearch,'%')) or lower(u.address) like lower(concat('%', :mySearch,'%')) or lower(u.employment) like lower(concat('%', :mySearch,'%'))")
	public List<Guest> listGuestSearch(@Param("mySearch") String mySearch,Pageable pageable);
	
	@Query(value= "select u from Guest u")
	public List<Guest> listGuest(Pageable pageable);
}
