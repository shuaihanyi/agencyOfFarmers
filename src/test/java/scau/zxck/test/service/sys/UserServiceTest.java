package scau.zxck.test.service.sys;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Log4jConfigurer;
import scau.zxck.base.exception.BaseException;
import scau.zxck.entity.sys.User;
import scau.zxck.service.sys.IUserService;

import java.io.FileNotFoundException;
import java.util.Set;

/**
 * Created by lishunpeng on 2015/11/13.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring.xml"})
public class UserServiceTest {
    private static Logger logger = Logger.getLogger(UserServiceTest.class);

    @Before
    public void before() {
        try {
            Log4jConfigurer.initLogging("classpath:config/log/log4j.properties");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Autowired
    private IUserService userService;

//    @Autowired
//    private RoleDao roleDao;

    @Test
    public void userServiceTest() throws BaseException {
//        User user = new User();
//        user.setUsername("111");
//        user.setPasswd("222");
//        user.setSalt("333");
//        String userId = userService.addUser(user);
//
//        Conditions conditions = new Conditions();
//        conditions.desc("id").limit(5);
//        List<Role> roleList = roleDao.list(conditions, "id");
//
//        List<String> roleIdList = new ArrayList<>();
//        for(Role role : roleList){
//            roleIdList.add(role.getId());
//        }
//
//        userService.addRoleRelations(userId, roleIdList);

//        String id = "ac95cfc7f8b0414db49b85865a4c9c18";
//        Set<String> roleCodes = userService.listRoleCodes(id);
//        logger.info("===========================================");
//        logger.info(JSON.toJSONString(roleCodes));
//        logger.info("===========================================");
//
//
//        Set<String> permissionCodes = userService.listPermissionCodes(id);
//        logger.info("===========================================");
//        logger.info(JSON.toJSONString(permissionCodes));
//        logger.info("===========================================");
    }

}
