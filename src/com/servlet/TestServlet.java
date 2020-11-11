package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/banana") //기능 달린 주석(어노테이션)
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public TestServlet() {
        super();
        
    }

	//HttpServlet 의 오버라이딩 메소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("어노테이션 사용방법");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
