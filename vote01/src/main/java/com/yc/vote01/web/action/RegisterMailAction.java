package com.yc.vote01.web.action;

import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.websocket.Session;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.yc.vote01.entity.User;
import com.yc.vote01.service.UserService;
import com.yc.vote01.service.impl.UserServiceImpl;

@Controller("registerMailAction")
public class RegisterMailAction implements ModelDriven<User>,SessionAware{
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	private User user;
	
	
	@Autowired
	private UserService userService;
	private Map<String, Object> session;
	

	public String sendEmail(){
		
		
	try {
		MimeMessage mm = javaMailSender.createMimeMessage();//邮件信息类
		
		MimeMessageHelper smm = new MimeMessageHelper(mm,true);
		
		smm.setFrom("15200706014@163.com");//邮件发送者
		
		String email = user.getEmail();
		
		System.out.println(email);
		
		smm.setTo(email);//邮件接收者
		smm.setSubject("spring整合邮件001");
		String accountId = UUID.randomUUID().toString();//激活码
		String activePath = "http://localhost:8080/vote01/user_active.action?email="+email;//激活路径
		smm.setText("激活账号:<a href='"+activePath+"'>"+activePath+"</a>",true);//邮件内容
		javaMailSender.send(mm);
		ActionContext.getContext().getSession().put("acountId", accountId);
		
		return "sendSuccess";
	} catch (MessagingException e) {
		
	}
	return "sendfail";
	}
	
	public String active(){
		System.out.println("active进来了");
	
		System.out.println("取到的email" + user.getEmail());
		
		String getemail = user.getEmail();
		
		System.out.println(getemail);
		int result = userService.updateStatus(getemail);
	
		System.out.println(result);
		if(result>0){
			return "activeSuccess";
		}
		return "activefail";
	}


	@Override
	public User getModel() {
		user = new User();
		return user;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
}
