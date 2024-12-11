package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Parent;

public interface ParentService {

	public Parent checkparentLogin(String email, String password);

	public String parentRegistration(Parent parent);


}
