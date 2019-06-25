package scau.zxck.service.market;

import scau.zxck.base.dao.utils.Page;
import scau.zxck.base.exception.BaseException;
import scau.zxck.entity.market.Link;

import java.util.List;

/**
 * Created by suruijia on 2016/1/29.
 */
public interface ILinkService {
    Page<Link> pageLink(Link link) throws BaseException;

    Link findOne(String id) throws BaseException;

    Integer findMaxPriority(int parent) throws BaseException;

    Integer findCount() throws BaseException;

    void updateLink(Link link) throws BaseException;

    void deleteLink(String id) throws BaseException;

    void deleteLinkByParent(int parent) throws BaseException;

    String addLink(Link link) throws BaseException;

    List<Link> listLinkByParent(int parent) throws BaseException;

    List<Link> listLinks() throws BaseException;

}
