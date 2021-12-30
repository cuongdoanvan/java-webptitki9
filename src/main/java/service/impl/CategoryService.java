package service.impl;


import java.util.List;

import javax.inject.Inject;

import ControllerModel.CategoryModel;
import DAO.ICategoryDAO;
import service.ICategoryService;


public class CategoryService implements ICategoryService {
	
	@Inject
	private ICategoryDAO categoryDao;

	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}
}