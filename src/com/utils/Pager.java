package com.utils;

import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangz on 2017/6/20.
 */
public class Pager {
    public static List page(List list, int count, int curPage){

        List result = new ArrayList();
        int finalPage = (int) Math.floor(list.size() / count);
        if (curPage == finalPage) {
            for(int index = list.size(), i = count; i > 0; i--)
                result.add(list.get(index - i));
        } else {
            for (int index = curPage * count, i = 0; i < count && (index + i < list.size()); i++) {
                result.add(list.get(index + i));
            }
        }

        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("finalPage", finalPage);
        return result;
    }
}
