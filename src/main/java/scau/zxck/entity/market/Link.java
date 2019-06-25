package scau.zxck.entity.market;

import scau.zxck.base.dao.annotation.Column;
import scau.zxck.base.dao.annotation.Table;
import scau.zxck.base.dao.entity.Unique;

/**
 * 友情链接表
 * Created by suruijia on 2016/1/29.
 */
@Table(name = "lab_link")
public class Link extends Unique {
    /**
     * 友情链接名
     */
    @Column(name = "name")
    private String name;

    /**
     * 链接
     */
    @Column(name = "link")
    private String link;

    /**
     * 父栏目
     */
    @Column(name = "parent")
    private Integer parent;

    /**
     * 栏目顺序
     */
    @Column(name = "priority")
    private Integer priority;

    public String getName() {
        return name;
    }

    public Integer getParent() {
        return parent;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }
}
