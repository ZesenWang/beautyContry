package com.action;

import com.service.AudioService;
import com.service.BookService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class AudioAction {
    private AudioService audioService;
    private int curPage;

    public String view(){
        List list = audioService.getData(curPage);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("audio", list);
        return "success";
    }
    public String upload(){
        return "uploadSuccess";
    }

    public void setAudioService(AudioService audioService) {
        this.audioService = audioService;
    }

    public AudioService getAudioService() {
        return audioService;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }
}
