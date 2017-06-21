package com.service;

import com.dao.GeneralDAO;
import com.utils.Pager;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class PictureService {
    private GeneralDAO generalDAO;

    public List getData(int curPage) {
        String hql = "from Picture";
        List list = generalDAO.getData(hql);
        List result = Pager.page(list, 4, curPage);
        return result;
    }

    public void setGeneralDAO(GeneralDAO generalDAO) {
        this.generalDAO = generalDAO;
    }

    public GeneralDAO getGeneralDAO() {
        return generalDAO;
    }

    public List getGalleryData(int reqGallery, int reqPage) {
        String sql = "select imagePath from galleryItems where galleryId = " + reqGallery;
        List list = generalDAO.getDataBySQL(sql);
        return list;
    }
}
