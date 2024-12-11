package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Faculty;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer> {
    @Query("SELECT f FROM Faculty f WHERE f.email = :email AND f.password = :password")
    Faculty checkFacultyLogin(@Param("email") String email, @Param("password") String password);

    @Query("SELECT f FROM Faculty f WHERE f.email = :email AND f.password = :password")
    Faculty findByEmailAndPassword(@Param("email") String email, @Param("password") String password);


}
