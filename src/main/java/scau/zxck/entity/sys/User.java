package scau.zxck.entity.sys;


import scau.zxck.base.dao.annotation.Column;
import scau.zxck.base.dao.annotation.Table;
import scau.zxck.base.dao.entity.Unique;

/**
 * 用户表
 * Created by suruijia on 2016/1/29.
 */
@Table(name = "lab_user")
public class User extends Unique {
    /**
     * 用户名
     **/
    @Column(name = "name")
    private String name;

    /**
     * 用户密码
     **/
    @Column(name = "password")
    private String password;

    /**
     * 盐
     */
    @Column(name = "salt")
    private String salt;

    /**
     * 账户是否可用的标志
     */
    @Column(name = "flag")
    private Integer flag;

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
