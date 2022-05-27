package com.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");

		if(id.equals("admin")) {
			return true;
		}else {
			System.out.println(id);
			response.sendRedirect("http://localhost:9000/mygit/index.do");
			return false;
		}

	}

	
}
