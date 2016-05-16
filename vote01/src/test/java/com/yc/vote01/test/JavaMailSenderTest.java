package com.yc.vote01.test;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.vote01.service.UserService;
import com.yc.vote01.web.action.RegisterMailAction;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class JavaMailSenderTest {
	@Autowired
	private JavaMailSender javaMailSender;// 邮件发送对象

	@Autowired
	UserService userService;
	@Test
	public void testSendEmail() {
		SimpleMailMessage smm = new SimpleMailMessage();// 邮件信息类

		smm.setFrom("15200706014@163.com");
		smm.setTo("1441076787@qq.com");
		smm.setSubject("spring整合邮件测试");
		smm.setText("hello,苏臭臭");

		javaMailSender.send(smm);
		System.out.println("邮件发送成功");

	}

	@Test
	public void testSendEmail02() {
		MimeMessage mm = javaMailSender.createMimeMessage();// 邮件信息类

		try {
			MimeMessageHelper smm = new MimeMessageHelper(mm,true);

			smm.setFrom("15200706014@163.com");// 邮件发送者
			smm.setTo("1441076787@qq.com");// 邮件接收者
			smm.setSubject("spring整合邮件测试02");// 邮件主题
			smm.setText("hello,spring邮件发送好简单，。。。。<br>"
					+ "<a href='http://www.baidu.com'>滚去百度！！</a><br>"
					+ "<img src='cid:pic909'>", true);// 邮件内容
			FileSystemResource fsr = new FileSystemResource("E:/01.jpg");// 创建文件系统资源
			smm.addInline("pic909", fsr);// 把内容Id与文件系统资源绑定
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		javaMailSender.send(mm);// 发送邮件
		System.out.println("邮件发送成功");

	}
	@Test
	public void tesail() {
//		RegisterMailAction we = new RegisterMailAction();// 邮件信息类
		int result = userService.updateStatus("1441076787@qq.com");
		System.out.println(result);

	}
}
