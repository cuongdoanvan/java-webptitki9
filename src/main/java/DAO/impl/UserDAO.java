package DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import ControllerModel.UserModel;
import DAO.IUserDAO;
import mapper.UserMapper;

public class UserDAO extends AbstractDao<UserModel> implements IUserDAO  {

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
		sql.append(" WHERE username = ? AND password = ? ");
		List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password);
		return users.get(0);
	}



	public UserModel save(String userName, String password) {
		String sql = "INSERT INTO user (username, password) VALUES(?, ?)";
		Connection connection = null;
		PreparedStatement ptmt = null;
		try {
		connection = getConnection();
		ptmt = connection.prepareStatement(sql);
		
		
		ptmt.setString(1, userName);
		ptmt.setString(2, password);
		
		int kt = ptmt.executeUpdate();
		
		if(kt !=0)
		{
			
		}
		
		ptmt.close();
		
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
		return null;
	

	
 }
}