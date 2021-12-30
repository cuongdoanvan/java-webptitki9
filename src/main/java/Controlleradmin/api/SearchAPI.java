package Controlleradmin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import ControllerModel.NewModel;
import service.INewService;
import utils.HttpUtil;
@WebServlet(urlPatterns = {"/api-admin-search"})
public class SearchAPI extends HttpServlet {

	@Inject
	private INewService newService;

	private static final long serialVersionUID = -915988021506484384L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		NewModel newModel =   HttpUtil.of(request.getReader()).toModel(NewModel.class);
		newModel = newService.search(newModel.getId());
		mapper.writeValue(response.getOutputStream(), newModel);
		
	}

}
