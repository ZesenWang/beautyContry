package com.service;

import com.dao.BookDAO;
import com.po.Book;
import com.utils.Pager;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class BookService {
    BookDAO bookDAO;

    public BookDAO getBookDAO() {
        return bookDAO;
    }

    public void setBookDAO(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    public List getData(int curPage) {
        String hql = "from Book";
        List list = bookDAO.getData(hql);
        List result = Pager.page(list, 3, curPage);
        return result;
    }

    public void upload(Book book) {
        bookDAO.upload(book);
    }
}
