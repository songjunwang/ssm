package pers.ssm.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by wsj on 2016/8/12.
 */
public class LoginDateTag extends TagSupport {
    @Override
    public int doStartTag() throws JspException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = simpleDateFormat.format(new Date());
        try {
            pageContext.getOut().print(date);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return super.doStartTag();
    }
}
