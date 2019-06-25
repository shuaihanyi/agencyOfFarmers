package scau.zxck.serviceImpl.sys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import scau.zxck.base.constants.ErrorCode;
import scau.zxck.base.dao.mybatis.Conditions;
import scau.zxck.base.dao.utils.Page;
import scau.zxck.base.exception.BaseException;
import scau.zxck.dao.sys.UserDao;
import scau.zxck.entity.sys.User;
import scau.zxck.service.sys.IUserService;

import javax.lang.model.type.ErrorType;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


/**
 * Created by suruijia on 2016/1/29.
 */
@Service
public class UserService implements IUserService {
    @Autowired
    private UserDao userDao;

    @Override
    public Page<User> pageUser(User user) throws BaseException {
        return userDao.pageByEntity(user);
    }

    @Override
    public User findOne(String id) throws BaseException {
        return userDao.findById(id);
    }

    @Override
    public void updateUser(User user) throws BaseException {
        userDao.updateById(user);
    }

    @Override
    public void deleteUser(String id) throws BaseException {
        userDao.deleteByIds(id);
    }

    @Override
    public String addUser(User user) throws BaseException {
        return userDao.add(user);
    }

    @Override
    public User findByName(String username) throws BaseException {
        Conditions conditions = new Conditions();
        conditions.eq("name", username);
        return userDao.find(conditions);
    }

    @Override
    public List<User> listUser() throws BaseException {
        return userDao.list(null);
    }

}
