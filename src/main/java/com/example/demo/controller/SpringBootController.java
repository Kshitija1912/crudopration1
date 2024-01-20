package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.example.demo.bean.student;
import com.example.demo.dao.studentRepository;

import jakarta.servlet.http.HttpSession;

@Controller
  public class SpringBootController {

	@RequestMapping("/register")
	public String register() {
	return "register";
 }
   @Autowired
   
     studentRepository sr;
     @RequestMapping("/showregister")
     
     public String showregister(student s) {
    	
      sr.save(s); //findbyId
      return "register";
    
     }
     @RequestMapping("/update")
     public String update(student s,HttpSession session) {
//    	 System.out.println(s.getEmail());
    	 session.setAttribute("student", s);
    	 
     return "update";
    }

       @RequestMapping("/showupdate")
        public String showupdate(student s) {
	
         sr.findById(s.getId()); 
    
        Optional<student> optional=sr.findById(s.getId());
        student s1=optional.get();
        
        s1.setFname(s.getFname());
  	  s1.setLname(s.getLname());
  	s1.setEmail(s.getEmail());
	 
	  s1.setPassword(s.getPassword());
	  s1.setMobile(s.getMobile());
	  s1.setAddress(s.getAddress());
	  	  
	  sr.save(s1);
     
		
	    return "redirect:/show";
    }

      


       @RequestMapping("/delete")
          public String delete(student s) {
	
	       System.out.println("hello");
            sr.deleteById(s.getId()); 
           
            return "redirect:/show";

        }
     
@RequestMapping("/show")
public String show( HttpSession session) {
	
	List<student> student=new ArrayList<>();
	for(student students:sr.findAll()) {
		student.add(students);
	}
		
	session.setAttribute("student", student);
   return "show";
}
}
