package com.yc.vote01.web.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/*
 * 用户登录校验拦截器
 * 
 * */
//MethodFilterInterceptor可以对请求方法进行过滤
public class LoginInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = -3653027463495548391L;


	
	@Override
	protected String doIntercept(ActionInvocation invacation) throws Exception {
		
		Map<String,Object> session = ActionContext.getContext().getSession();//取到session的封装对象
		Object obj = session.get("loginUser");
		if(obj == null){
			session.put("errorMsg", "请登录之后，再 操作！");
			return "login";
		}
		return invacation.invoke();
	}

}
