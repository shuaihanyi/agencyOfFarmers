package scau.zxck.entity.market;

import scau.zxck.base.dao.annotation.Column;
import scau.zxck.base.dao.annotation.Table;
import scau.zxck.base.dao.entity.Unique;

import java.sql.Date;
import java.sql.Timestamp;

/**
 * 导航栏表
 * Created by suruijia on 2016/1/29.
 */
@Table(name = "union_staff")
public class UnionStaff extends Unique {
    /**
     * 合作社id
     */
    @Column(name = "Union_PK")
    private Integer unionPK;

    /**
     * 姓名
     */
    @Column(name = "Staff_Name")
    private String staffName;

    /**
     * 性别
     */
    @Column(name = "Staff_Sex")
    private Integer staffSex;

    /**
     * 出生日期
     */
    @Column(name = "Staff_Birthday")
    private Date staffBirthday;

    /**
     * 住址
     */
    @Column(name = "Staff_Address")
    private String staffAddress;

    /**
     * 电话
     */
    @Column(name = "Staff_Phone")
    private String staffPhone;

    /**
     * 工号id
     */
    @Column(name = "Staff_ID")
    private String staffID;

    /**
     * 邮箱
     */
    @Column(name = "Staff_Email")
    private String staffEmail;

    /**
     * 备注
     */
    @Column(name = "Remark")
    private String remark;

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getUnionPK() {
        return unionPK;
    }

    public void setUnionPK(Integer unionPK) {
        this.unionPK = unionPK;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Integer getStaffSex() {
        return staffSex;
    }

    public void setStaffSex(Integer staffSex) {
        this.staffSex = staffSex;
    }

    public Date getStaffBirthday() {
        return staffBirthday;
    }

    public void setStaffBirthday(Date staffBirthday) {
        this.staffBirthday = staffBirthday;
    }

    public String getStaffAddress() {
        return staffAddress;
    }

    public void setStaffAddress(String staffAddress) {
        this.staffAddress = staffAddress;
    }

    public String getStaffPhone() {
        return staffPhone;
    }

    public void setStaffPhone(String staffPhone) {
        this.staffPhone = staffPhone;
    }

    public String getStaffID() {
        return staffID;
    }

    public void setStaffID(String staffID) {
        this.staffID = staffID;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }
}
