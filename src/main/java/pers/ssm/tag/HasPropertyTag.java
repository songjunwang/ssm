package pers.ssm.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Created by wsj on 2016/8/16.
 */
public class HasPropertyTag extends TagSupport {
    private String url;
    private String username;
    private String password;

    @Override
    public int doEndTag() throws JspException {
        System.out.println(String.format("url:%s,username:%s,password:%s",url,username,password));
        try {
            pageContext.getOut().print(String.format("url:%s,username:%s,password:%s",url,username,password));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return super.doEndTag();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
