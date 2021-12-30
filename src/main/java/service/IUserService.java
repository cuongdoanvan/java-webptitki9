package service;

import ControllerModel.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password);
	UserModel save(String userName, String password);
}