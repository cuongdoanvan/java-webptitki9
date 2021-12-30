package service.impl;

import javax.inject.Inject;

import ControllerModel.UserModel;
import DAO.IUserDAO;
import DAO.impl.UserDAO;
import service.IUserService;

public class UserService implements IUserService {
	@Inject
	private IUserDAO userDAO;

	
	
	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password) {
		return userDAO.findByUserNameAndPasswordAndStatus(userName, password);
	}



	@Override
	public UserModel save(String userName, String password) {
		// TODO Auto-generated method stub
		return userDAO.save(userName, password);
	}
	
}