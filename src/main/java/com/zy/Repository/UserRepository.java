package com.zy.Repository;


import com.zy.Entry.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,String> {
    User findByUserIdAndUserPassWord(String userId,String password);
}
