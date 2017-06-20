package com.service;

import com.dao.BookDAO;
import com.dao.GeneralDAO;
import com.utils.Pager;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class AudioService {
    private GeneralDAO generalDAO;

    public List getData(int curPage) {
        String hql = "from Audio";
        List list = generalDAO.getData(hql);
        List result = Pager.page(list, 3, curPage);
        return result;
    }

    public void setGeneralDAO(GeneralDAO generalDAO) {
        this.generalDAO = generalDAO;
    }

    public GeneralDAO getGeneralDAO() {
        return generalDAO;
    }
}
