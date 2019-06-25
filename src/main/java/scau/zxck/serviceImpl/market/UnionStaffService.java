package scau.zxck.serviceImpl.market;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import scau.zxck.base.exception.BaseException;
import scau.zxck.dao.market.UnionStaffDao;
import scau.zxck.entity.market.UnionStaff;
import scau.zxck.service.market.IUnionStaffService;

import java.util.List;


/**
 * Created by suruijia on 2016/1/29.
 */
@Service
public class UnionStaffService implements IUnionStaffService {
    @Autowired
    private UnionStaffDao unionStaffDao;

    @Override
    public UnionStaff findOne(String id) throws BaseException {
        return unionStaffDao.findById(id);
    }

    @Override
    public void updateUnionStaff(UnionStaff unionStaff) throws BaseException {
        unionStaffDao.updateById(unionStaff);
    }

    @Override
    public void deleteUnionStaff(String id) throws BaseException {
        unionStaffDao.deleteByIds(id);
    }

    @Override
    public String addUnionStaff(UnionStaff unionStaff) throws BaseException {
        return unionStaffDao.add(unionStaff);
    }

    @Override
    public List<UnionStaff> listUnionStaff() throws BaseException {
        return unionStaffDao.listAll();
    }
}
