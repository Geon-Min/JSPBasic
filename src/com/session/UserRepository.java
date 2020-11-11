package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
	
	//DB가정
	private static List<User> userList = new ArrayList<>();
	
	
	
	public static User getUser(String id)  {
		
		for(User user : userList) {
			
			if(user.getId().equals(id)){
				
				return user;
			}

		}	
		return null;
	}


	public static void setUserList(User user) {
		userList.add(user);
	}
	
	
	// 회원 탈퇴
	public static void delUser(String id) {
		//메소드 재활용
		userList.remove(getUser(id));
		
	}
}
