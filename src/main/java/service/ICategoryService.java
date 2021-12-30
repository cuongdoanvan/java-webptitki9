package service;

import java.util.List;

import ControllerModel.CategoryModel;

public interface ICategoryService {
	
	List<CategoryModel> findAll();
}