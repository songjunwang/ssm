package pers.ssm.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Created by wsj on 2016/8/16.
 */
public class SkipBodyOrEvalBodyIncludeTag extends TagSupport {
    @Override
    public int doStartTag() throws JspException {
        String name = pageContext.getRequest().getParameter("name");
        if (name != null && "wsj".equals(name)) {
            return EVAL_BODY_INCLUDE;
        }else{
            return SKIP_BODY;
        }
    }
}
