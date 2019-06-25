package scau.zxck.serviceImpl.market;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import scau.zxck.base.dao.mybatis.Conditions;
import scau.zxck.base.dao.utils.Page;
import scau.zxck.base.exception.BaseException;
import scau.zxck.dao.market.LinkDao;
import scau.zxck.entity.market.Link;
import scau.zxck.service.market.ILinkService;

import java.util.List;


/**
 * Created by suruijia on 2016/1/29.
 */
@Service
public class LinkService implements ILinkService {
    @Autowired
    private LinkDao linkDao;


    @Override
    public Page<Link> pageLink(Link link) throws BaseException {
        return linkDao.pageByEntity(link);
    }

    @Override
    public Link findOne(String id) throws BaseException {
        return linkDao.findById(id);
    }

    @Override
    public Integer findMaxPriority(int parent) throws BaseException {
        return linkDao.getMaxPriority(parent);
    }

    @Override
    public Integer findCount() throws BaseException {
        return linkDao.getCount();
    }

    @Override
    public void updateLink(Link link) throws BaseException {
        linkDao.updateById(link);
    }

    @Override
    public void deleteLink(String id) throws BaseException {
        linkDao.deleteByIds(id);
    }

    @Override
    public void deleteLinkByParent(int parent) throws BaseException {
        Conditions conditions = new Conditions();
        conditions.eq("parent",parent);
        linkDao.delete(conditions);
    }

    @Override
    public String addLink(Link link) throws BaseException {
        return linkDao.add(link);
    }

    @Override
    public List<Link> listLinkByParent(int parent) throws BaseException {
        Conditions conditions = new Conditions();
        conditions.eq("parent",parent);
        conditions.asc("priority");
        return linkDao.list(conditions);
    }

    @Override
    public List<Link> listLinks() throws BaseException {
        Conditions conditions = new Conditions();
        conditions.asc("parent","priority");
        return linkDao.list(conditions);
    }
}
