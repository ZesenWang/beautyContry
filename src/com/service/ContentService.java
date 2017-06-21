package com.service;

import com.dao.GeneralDAO;
import org.apache.struts2.ServletActionContext;
import org.springframework.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wangz on 2017/6/20.
 */
public class ContentService {

    GeneralDAO generalDAO;

    public GeneralDAO getGeneralDAO() {
        return generalDAO;
    }

    public void setGeneralDAO(GeneralDAO generalDAO) {
        this.generalDAO = generalDAO;
    }

    public List getData(int curPage) {
        String sql = "select * from contentCategory";
        List list = generalDAO.getDataBySQL(sql);
        List result = new ArrayList();

        for(int i = 0; i < list.size(); i++) {
            Object[] objects = (Object[]) list.get(i);
            String hql = "from Content where categoryId = "+objects[0].toString();
            List list1 = generalDAO.getData(hql);
            result.add(list1);
        }
        //把大标题放到request里
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("header", list);
        return result;
    }

    public List getContentData(int reqContent) {
        String sql = "select header, full, likability, username, comment from comment2, content" +
                " where comment2.contentId = "+reqContent+" and content.id = "+reqContent;
        List result = generalDAO.getDataBySQL(sql);
        return result;
    }
}
