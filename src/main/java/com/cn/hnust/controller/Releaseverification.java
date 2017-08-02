package com.cn.hnust.controller;

import com.cn.hnust.pojo.User;

public class Releaseverification implements Runnable {
	
	private User user;
	
	public Releaseverification(User user) {
		super();
		this.user = user;
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		try {
			Thread.sleep(10000);
			
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
