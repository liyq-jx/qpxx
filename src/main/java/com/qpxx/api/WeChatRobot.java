package com.qpxx.api;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qpxx.util.WeChatMessageDigestUtil;

@Controller
@RequestMapping("weChatApi")
public class WeChatRobot {
	Logger logger =LogManager.getLogger(this.getClass().getSimpleName());
	
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public void doGet(HttpServletRequest request,HttpServletResponse response){
	    /** 判断是否是微信接入激活验证，只有首次接入验证时才会收到echostr参数，此时需要把它直接返回 */  
	    String echostr = request.getParameter("echostr");  
	    String signature = request.getParameter("signature");
	    String timestamp = request.getParameter("timestamp");  
	    String nonce = request.getParameter("nonce");  
	    String token="abcddell";
	    String[] strings={token,nonce,timestamp};
	    Arrays.sort(strings);
	    StringBuffer sb = new StringBuffer();
	    for(int i=0;i<strings.length;i++){
	    	sb.append(strings[i]);
	    }
	    String pwd = WeChatMessageDigestUtil.getInstance().encipher(sb.toString());  
	    if(pwd.equals(signature)){
	    	if(!"".equals(echostr)&&echostr!=null){
				try {
					response.getWriter().write(echostr);
					logger.info("微信接入成功!");
				} catch (IOException e) {
					logger.info("微信接入失败!");
					e.printStackTrace();
				}
			}
		}
	
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="index",method=RequestMethod.POST)
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, DocumentException{
	   String openId =request.getParameter("openid");
	   InputStream inputStream = request.getInputStream();
	   SAXReader reader = new SAXReader();
	   Document document = reader.read(inputStream);
	   Element element = document.getRootElement();
	   List<Element> elementList = element.elements();
	   StringBuffer sb = new StringBuffer();
	   sb.append("<xml>");
	   elementList.forEach(item->{
		   System.out.println(item.getName()+"=============="+item.getText());
		  switch (item.getName()) {
			case "FromUserName": 
				sb.append("<ToUserName><![CDATA["+item.getText()+"]]></ToUserName>");
				break;
			default:
				break;
		}
	   });
	   sb.append("<FromUserName><![CDATA[gh_db4656b56672]]></FromUserName>");
	   sb.append("<CreateTime>1484704315</CreateTime>");
	   sb.append("<MsgType><![CDATA[text]]></MsgType>");
	   sb.append("<Content><![CDATA[欢迎关注快捷查!]]></Content>");
	   sb.append("</xml>");
	   request.setCharacterEncoding("UTF-8");
	   response.setContentType("text/html;charset=utf-8");
	   
	   response.getWriter().write(sb.toString());
       System.out.println("我执行了这里。。。。。。openId="+openId);
	}
	
	
}
