package com.tp.controller;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/")	
public class AjaxController {
	
	@Autowired
    SessionFactory sessionFactory;

	@GetMapping("toggleUser/{userId}/{enabled}")
    public ResponseEntity toggleUser(@PathVariable int userId, @PathVariable boolean enabled) {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("update LoginVO set enabled=:enabled where id=:userId");
        q.setParameter("enabled", enabled ? "1" : "0");
        q.setParameter("userId", userId);
        int updateCount = q.executeUpdate();
        return new ResponseEntity(updateCount == 1 ? HttpStatus.OK : HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
