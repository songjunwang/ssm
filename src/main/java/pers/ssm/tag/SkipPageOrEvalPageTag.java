package pers.ssm.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Created by wsj on 2016/8/16.
 */
public class SkipPageOrEvalPageTag extends TagSupport {
    @Override
    public int doEndTag() throws JspException {
        HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();

        String referer = request.getHeader("referer");
        String url = "http://"+request.getServerName();
        System.out.println(String.format("referer:%s,url:%s",referer,url));

        if (referer != null && referer.startsWith(url)) {
            return EVAL_PAGE;
        }else{
            try {
                pageContext.getOut().print("拒绝访问！");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return SKIP_PAGE;
    }
}
