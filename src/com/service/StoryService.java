package com.service;

import com.dao.GeneralDAO;
import com.utils.Pager;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class StoryService {
    private GeneralDAO generalDAO;

    public List getData(int curPage) {
        String hql = "from Story";
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

    public List getStoryData(int reqStory) {
        String sql = "select story.id, header, fullStory, likability, username, comment from story" +
                ", comment where story.id = "+reqStory+" and comment.storyId = "+reqStory;
        List list = generalDAO.getDataBySQL(sql);

        return list;
    }
}
