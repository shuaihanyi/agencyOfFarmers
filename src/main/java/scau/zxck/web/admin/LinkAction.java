package scau.zxck.web.admin;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import scau.zxck.base.exception.BaseException;
import scau.zxck.entity.market.Link;
import scau.zxck.service.market.ILinkService;
import scau.zxck.utils.HtmlRegexpUtil;

import java.util.List;

/**
 * Created by suruijia on 2016/2/6.
 */
@Controller
@RequestMapping("/admin/LinkAction")
public class LinkAction {
    @Autowired
    private ILinkService linkService;


    /**
     * 获取分类
     * @return
     * @throws BaseException
     */
    @RequestMapping(value = "getCategory",method = RequestMethod.GET)
    @ResponseBody
    public String getCategory() throws BaseException{
        System.out.println("in getCategory");
        List<Link> linkList = linkService.listLinkByParent(0);
        return JSON.toJSONString(linkList);
    }

    @RequestMapping(value = "getLinks",method = RequestMethod.GET)
    @ResponseBody
    public String getLinks(int parent) throws BaseException{
        System.out.println("in getLinks");
        List<Link> linkList = linkService.listLinkByParent(parent);
        return JSON.toJSONString(linkList);
    }

    /**
     * 新增分类
     * @param name
     * @return
     * @throws BaseException
     */
    @RequestMapping(value = "addCategory",method = RequestMethod.GET)
    @ResponseBody
    public String addCategory(String name) throws BaseException{
        System.out.println("in addCategory");
        Link linkObj = new Link();
        linkObj.setName(HtmlRegexpUtil.replaceTag(name));
        linkObj.setLink("分类");
        linkObj.setParent(0);
        Integer index = linkService.findMaxPriority(0);
        linkObj.setPriority((null==index?0:index.intValue())+1);
        linkService.addLink(linkObj);
        return "1";
    }

    /**
     * 新增链接
     * @param name
     * @param link
     * @param parent
     * @return
     * @throws BaseException
     */
    @RequestMapping(value = "addLink",method = RequestMethod.GET)
    @ResponseBody
    public String addLink(String name,String link,int parent) throws BaseException{
        System.out.println("in addLink");
        Link linkObj = new Link();
        linkObj.setName(HtmlRegexpUtil.replaceTag(name));
        linkObj.setLink(link);
        linkObj.setParent(parent);
        Integer index = linkService.findMaxPriority(parent);
        linkObj.setPriority((null==index?0:index.intValue())+1);
        linkService.addLink(linkObj);
        return "1";
    }

    /**
     * 删除分类
     * @param id
     * @return
     * @throws BaseException
     */
    @RequestMapping(value = "deleteCategory",method = RequestMethod.GET)
    @ResponseBody
    public String deleteCategory(String id)throws BaseException{
        System.out.println("in deleteCategory");
        //数据库至少得有一个分类存在
        if(linkService.findCount() == 1){
            return "1";
        }
        int parent = linkService.findOne(id).getPriority();
        linkService.deleteLinkByParent(parent);
        linkService.deleteLink(id);
        return "1";
    }

    /**
     * 删除链接
     * @param id
     * @return
     * @throws BaseException
     */
    @RequestMapping(value = "deleteLink",method = RequestMethod.GET)
    @ResponseBody
    public String deleteLink(String id)throws BaseException{
        System.out.println("in deleteLink");
        linkService.deleteLink(id);
        return "1";
    }

    @RequestMapping(value = "modifyCategory",method = RequestMethod.GET)
    @ResponseBody
    public String modifyCategory(String id,String name)throws BaseException{
        System.out.println("in modifyCategory");
        System.out.println("id:"+id+" name:"+name);
        Link linkObj = new Link();
        linkObj.setId(id);
        linkObj.setName(HtmlRegexpUtil.replaceTag(name));
        linkService.updateLink(linkObj);
        return "1";
    }

    @RequestMapping(value = "modifyLink",method = RequestMethod.GET)
    @ResponseBody
    public String modifyLink(String id,String name,String link,int parent)throws BaseException{
        System.out.println("in modifyLink");
        Link oldLink = linkService.findOne(id);
        Link linkObj = new Link();
        linkObj.setId(id);
        linkObj.setName(HtmlRegexpUtil.replaceTag(name));
        linkObj.setLink(link);
        if(oldLink.getParent() == parent){
            linkService.updateLink(linkObj);
            return "1";
        }
        linkObj.setParent(parent);
        Integer index = linkService.findMaxPriority(parent);
        linkObj.setPriority((null==index?0:index.intValue())+1);
        linkService.updateLink(linkObj);
        return "1";
    }

}
