package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.po.Book;
import com.service.BookService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class BookAction {
    private BookService bookService;
    private int curPage;
    private String username;
    private String bookName;
    private String profile;

    public BookService getBookService() {
        return bookService;
    }

    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String view(){
        List list = bookService.getData(curPage);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("books", list);
        return "success";
    }
    public String upload(){
        Book book = new Book();
        book.setBookname(bookName);
        book.setProfile(profile);
        bookService.upload(book);
        return "uploadSuccess";
    }
}
