package com.action;

import com.service.PictureService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class PictureAction {
    private PictureService pictureService;
    private int curPage;
    private int reqGallery;
    private int reqPage;

    public String view(){
        List list = pictureService.getData(curPage);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("picture", list);
        return "success";
    }
    public String upload(){
        return "uploadSuccess";
    }

    public String detail(){
        List list = pictureService.getGalleryData(reqGallery, reqPage);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("pictureList", list);
        return "detailSuccess";
    }

    public PictureService getPictureService() {
        return pictureService;
    }

    public void setPictureService(PictureService pictureService) {
        this.pictureService = pictureService;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getReqGallery() {
        return reqGallery;
    }

    public void setReqGallery(int reqGallery) {
        this.reqGallery = reqGallery;
    }

    public int getReqPage() {
        return reqPage;
    }

    public void setReqPage(int reqPage) {
        this.reqPage = reqPage;
    }
}
