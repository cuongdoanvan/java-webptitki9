package Controlleradmin.api;


import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import ControllerModel.UserModel;
import service.IUserService;
import utils.HttpUtil;




@WebServlet(urlPatterns = {"/api-admin-user"})
public class UserAPI extends HttpServlet {
	
	@Inject
	private IUserService userService;

	private static final long serialVersionUID = -915988021506484384L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		UserModel userModel =  HttpUtil.of(request.getReader()).toModel(UserModel.class);
		//newModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		userModel = userService.findByUserNameAndPasswordAndStatus(userModel.getUserName(), userModel.getPassword());	
		mapper.writeValue(response.getOutputStream(), userModel);
		
	}
}