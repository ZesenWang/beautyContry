package com.action;

import com.service.StoryService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class StoryAction {
    private StoryService storyService;
    private int curPage;
    private int reqStory;

    public int getReqStory() {
        return reqStory;
    }

    public void setReqStory(int reqStory) {
        this.reqStory = reqStory;
    }

    public StoryService getStoryService() {
        return storyService;
    }

    public void setStoryService(StoryService storyService) {
        this.storyService = storyService;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public String view(){
        List list = storyService.getData(curPage);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("story", list);
        return "success";
    }
    public String upload(){
        return "uploadSuccess";
    }
    public String detail(){
        List list = storyService.getStoryData(reqStory);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("allInfo", list);
        return "detailSuccess";
    }

    public String like(){
        return "likeSuccess";
    }

    public String comment(){
        return "commentSuccess";
    }
}
