package com.zy.Service;

import com.zy.Entry.User;
import com.zy.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserService {
    @Autowired
    UserRepository userRepository;

    public boolean register(String userId,String password){
        List<User> users = userRepository.findAll();
        for (User user : users){
            if (user.getUserId().equals(userId)){
                return false;
            }
        }
        //若Id不重复则对其进行注册
        User user = new User();
        user.setUserId(userId);
        user.setUserPassWord(password);
        userRepository.save(user);
        return true;
    }
    //加入loginCheck方法，返回值为User对象。这里主要是为了后面演示对象在网络中的传输才把返回值设置为对象。
    public User loginCheck(String userId, String password){
        return userRepository.findByUserIdAndUserPassWord(userId,password);
    }

}

