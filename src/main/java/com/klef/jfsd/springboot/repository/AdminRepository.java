package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String>
{
  @Query("select a from Admin a where a.username=?1 and a.password=?2")
  public Admin checkAdminLogin(String uname,String pwd);
  
  @Query("update Student s set s.status=?1 where s.id=?2")
  @Modifying
  @Transactional // Ensures the transaction is committed automatically
  public int updatestudentstatus(String status, int id);

 


 

}
