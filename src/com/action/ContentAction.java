package com.action;

import com.service.ContentService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangz on 2017/6/20.
 */
public class ContentAction {
    private ContentService contentService;
    private int reqContent;
    private int curPage;

    public String view() {
        List list = contentService.getData(curPage);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("content", list);
        return "success";
    }

    public String detail() {
        List list = contentService.getContentData(reqContent);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("allInfo", list);
        return "detailSuccess";
    }

    public String like() {
        return "likeSuccess";
    }

    public String comment() {
        return "commentSuccess";

    }

    public ContentService getContentService() {
        return contentService;
    }

    public void setContentService(ContentService contentService) {
        this.contentService = contentService;
    }

    public int getReqContent() {
        return reqContent;
    }

    public void setReqContent(int reqContent) {
        this.reqContent = reqContent;
    }
}
