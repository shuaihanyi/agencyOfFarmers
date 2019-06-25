package scau.zxck.web.interceptor;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import scau.zxck.base.dao.mybatis.Conditions;
import scau.zxck.entity.sys.User;
import scau.zxck.service.sys.IUserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by leeshunpeng on 2015/6/17.
 */
/* 自定义拦截器需要实现 HandlerInterceptor接口 或者 扩展 HandlerInterceptorAdapter类 */
public class LogInterceptor implements HandlerInterceptor{/*extends HandlerInterceptorAdapter*/
    private static Logger logger = Logger.getLogger(LogInterceptor.class);

    @Autowired
    private IUserService userService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
        if(obj != null){
            logger.info("preHandle:" + JSON.toJSONString(obj));
            System.out.println("===========================================in LogInterceptor===============================================================");
            System.out.println("===========================================in LogInterceptor===============================================================");
            System.out.println("===========================================in LogInterceptor===============================================================");
            System.out.println("===========================================in LogInterceptor===============================================================");
            System.out.println("===========================================in LogInterceptor===============================================================");

            System.out.println(request.getServletPath());
            String url = request.getServletPath();
            HttpSession session = request.getSession();
            String username = (String)session.getAttribute("userName");
            String password = (String)session.getAttribute("pwd");
            if(null != username || "".equals(username)){
                if(url.contains("UserAction")&&!username.equals("admin")){
                    return false;
                }
                User user = userService.findByName(username);
                if(null != user){
                    if(user.getFlag() ==1){
                        return false;
                    }
                    if(null!=password && !"".equals(password) &&password.equals(user.getPassword())){
                        return true;
                    }
                }
            }

        }
        System.out.println("false:"+request.getContextPath());
        String url = request.getRequestURL().toString();
        String host = url.substring(0,url.indexOf(request.getRequestURI().toString())+1);
        System.out.println(host);
        response.sendRedirect(host+"login");
        System.out.println("shoud't be here");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object obj, ModelAndView modelAndView) throws Exception {
        if(obj != null && modelAndView != null){
            logger.info("postHandle:" + JSON.toJSONString(obj));
        }
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object obj, Exception e) throws Exception {
        if(obj != null){
            logger.info("afterCompletion:" + JSON.toJSONString(obj));
        }
    }
}
