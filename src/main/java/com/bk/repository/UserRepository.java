package com.bk.repository;

/**
 * @author Milan Karajovic azdajaazdaja@gmail.com
 */

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bk.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

}
