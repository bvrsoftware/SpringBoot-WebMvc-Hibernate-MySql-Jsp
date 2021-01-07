package bvrsoftware.com.servicedao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bvrsoftware.com.dao.Mydao;
import bvrsoftware.com.model.Student;

@Service
public class MyService {

	@Autowired
	private Mydao dao;
	
   public void saveOrUpdate(Student s)
   {
	   dao.save(s);
   }
   public Student getById(int id)
   {
	   return dao.findById(id).get();
   }
   public void DeleteStudent(int id)
   {
	    dao.deleteById(id);
   }
   public List<Student> getAllStudent()
   {
	return (List<Student>) dao.findAll();
   }
   
}
