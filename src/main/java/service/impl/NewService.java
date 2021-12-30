package service.impl;
import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import ControllerModel.CategoryModel;
import ControllerModel.NewModel;
import DAO.ICategoryDAO;
import DAO.INewDAO;
import paging.Pageble;
import service.INewService;

public class NewService implements INewService {
	
	@Inject
	private INewDAO newDao;

	@Inject
	private ICategoryDAO categoryDAO;

	@Override
	public List<NewModel> findByCategoryId(Long categoryId) {
		return newDao.findByCategoryId(categoryId);
	}

	@Override
	public NewModel save(NewModel newModel) {
		newModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		newModel.setCreatedBy("");;
		Long newId = newDao.save(newModel);
		return newDao.findOne(newId);
	}

	@Override
	public NewModel update(NewModel updateNew) {
	NewModel oldNew = newDao.findOne(updateNew.getId());
	updateNew.setCreatedDate(oldNew.getCreatedDate());
	updateNew.setCreatedBy(oldNew.getCreatedBy());
	updateNew.setModifiedDate(new Timestamp(System.currentTimeMillis()));
	updateNew.setModifiedBy("");
	newDao.update(updateNew);
	return newDao.findOne(updateNew.getId());
	}
	@Override
  public void delete(long id) {
	 
	  newDao.delete(id);
	  
  }

	

	@Override
	public int getTotalItem() {
		// TODO Auto-generated method stub
		return newDao.getTotalItem();
	}

	@Override
	public NewModel findOne(long id) {
		NewModel newModel = newDao.findOne(id);
		CategoryModel categoryModel = categoryDAO.findOne(newModel.getCategoryId());
		newModel.setCategoryCode(categoryModel.getCode());
		return newModel;
	}

	@Override
	public List<NewModel> findAll() {
		// TODO Auto-generated method stub
		return newDao.findAll();
	}

	@Override
	public NewModel search(long id) {
		// TODO Auto-generated method stub
		return newDao.findOne(id);
	}



	


	



	
}