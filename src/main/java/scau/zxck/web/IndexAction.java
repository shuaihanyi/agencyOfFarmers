package scau.zxck.web;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import scau.zxck.base.exception.BaseException;
import scau.zxck.entity.market.UnionStaff;
import scau.zxck.service.market.IUnionStaffService;

import java.util.List;

/**
 * Created by suruijia on 2016/2/6.
 */
@Controller
@RequestMapping("/")
public class IndexAction {

    @Autowired
    private IUnionStaffService unionStaffService;

    /**
     * 首頁
     * @return
     * @throws BaseException
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String Index(Model model) throws BaseException{
        List<UnionStaff> unionStaffList = unionStaffService.listUnionStaff();
        model.addAttribute("unionStaffList", unionStaffList);
        return "index";
    }

}
