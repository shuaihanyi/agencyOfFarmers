package scau.zxck.dao.market;

import org.springframework.stereotype.Repository;
import scau.zxck.base.constants.ErrorCode;
import scau.zxck.base.dao.BaseDao;
import scau.zxck.base.exception.BaseException;
import scau.zxck.entity.market.Link;

/**
 * Created by suruijia on 2016/1/29.
 */
@Repository
public class LinkDao extends BaseDao<Link> {
    /**
     * 获取指定parent的最大的priority
     * @param parent
     * @return
     * @throws BaseException
     */
    public Integer getMaxPriority(int parent) throws BaseException{
        try {
            return getSqlSession().selectOne(getMapperId("getMaxPriority"),parent);
        } catch (Exception e) {
            throw new BaseException(e, ErrorCode.DB_STORE_ERROR);
        }
    }

    /**
     * 获取分类总数
     * @return
     * @throws BaseException
     */
    public Integer getCount() throws BaseException{
        try {
            return getSqlSession().selectOne(getMapperId("getCount"));
        } catch (Exception e) {
            throw new BaseException(e, ErrorCode.DB_STORE_ERROR);
        }
    }
}
