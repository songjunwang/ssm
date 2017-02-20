package pers.ssm.tag;

import org.springframework.util.StringUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Created by wsj on 2016/8/16.
 */
public class ToolBarButtonTag extends TagSupport {
    private String id;
    private String text;
    private String iconCls;
    private String handler;

    @Override
    public int doStartTag() throws JspException {
        String button = String.format("{id:'%s',text:'%s',iconCls:'%s',handler:%s},", this.id, this.text, this.iconCls, this.handler);
        System.out.println(button);
        if (!StringUtils.isEmpty(this.id) && this.id.startsWith("b")) {
            try {
                pageContext.getOut().print(button);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return super.doStartTag();
    }

    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public String getHandler() {
        return handler;
    }

    public void setHandler(String handler) {
        this.handler = handler;
    }
}
