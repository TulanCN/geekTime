package com.example.tag.demo_tag.mytag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import java.io.IOException;

public class mytag extends BodyTagSupport {

    private String value;

    private String link;

    @Override
    public int doStartTag() throws JspException {

        HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();

        return BodyTagSupport.EVAL_BODY_INCLUDE;
    }

    @Override
    public int doEndTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            //显示操作按钮
            out.println("<a href='" +link+ "' class='regular'>"+ value + "</a>");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return BodyTagSupport.SKIP_BODY;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
