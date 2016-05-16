package com.yc.vote01.web.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/*
 * 用户登录校验拦截器
 * 
 * */
public class LoginInterceptor02 implements Interceptor {

	private static final long serialVersionUID = -3653027463495548391L;

	@Override
	public void destroy() {

	}

	@Override
	public void init() {	
		
	}

	@Override
	public String intercept(ActionInvocation invacation) throws Exception {
		Map<String,Object> session = ActionContext.getContext().getSession();//取到session的封装对象
		Object obj = session.get("loginUser");
		if(obj == null){
			session.put("errorMsg", "请登录之后，再 操作！");
			return "login";
		}
		return invacation.invoke();
	}

}
