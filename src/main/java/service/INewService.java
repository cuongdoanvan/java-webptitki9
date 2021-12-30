package service;


import java.util.List;

import ControllerModel.NewModel;
import paging.Pageble;


public interface INewService {
	List<NewModel> findByCategoryId(Long categoryId);
	NewModel save(NewModel newModel);
	NewModel update(NewModel updateNew);
	void delete(long id);
	int getTotalItem();
	NewModel findOne(long id);
	List<NewModel> findAll();
	NewModel search(long id);
	
}