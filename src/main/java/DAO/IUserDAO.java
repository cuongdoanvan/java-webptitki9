package DAO;

import ControllerModel.UserModel;

public interface IUserDAO extends GenericDAO<UserModel> {
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password);
	
	UserModel save(String userName, String password);
}