package scau.zxck.service.market;

import scau.zxck.base.dao.utils.Page;
import scau.zxck.base.exception.BaseException;
import scau.zxck.entity.market.UnionStaff;

import java.util.List;

/**
 * Created by suruijia on 2016/1/29.
 */
public interface IUnionStaffService {

    UnionStaff findOne(String id) throws BaseException;

    void updateUnionStaff(UnionStaff unionStaff) throws BaseException;

    void deleteUnionStaff(String id) throws BaseException;

    String addUnionStaff(UnionStaff unionStaff) throws BaseException;

    List<UnionStaff> listUnionStaff() throws BaseException;

}
