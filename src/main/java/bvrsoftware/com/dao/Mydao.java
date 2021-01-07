package bvrsoftware.com.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import bvrsoftware.com.model.Student;

@Repository
public interface Mydao extends CrudRepository<Student, Integer>{

}
