package com.diworksdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{

	public String execute() {
		String result = "login";
		
		if(session.containsKey("login_user_id")) {
			BuyItemDAO buyItemDAO = new BuyItemDAO();
			BuyItemDTO buyItemDTO = new BuyItemDTO();
			
			session.put("id", buyItemDTO.getId());
			session.put("buyItem_price", buyItemDTO.getItemPrice());
			
			result = SUCCESS;
		}
		
		return result;
	}
	
	@Override
	
	public void setSession(Map<String, Object>sesiion) {
		this.session = session;
	}
	
	public Map<String, Object> getSession(){
		return this.session();
	}
}
