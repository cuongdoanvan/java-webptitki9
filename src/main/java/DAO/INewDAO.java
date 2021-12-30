package DAO;

import java.util.List;

import ControllerModel.NewModel;
import paging.Pageble;


public interface INewDAO extends GenericDAO<NewModel> {
	NewModel findOne(Long id);
	List<NewModel> findByCategoryId(Long categoryId);
	Long save(NewModel newModel);
	void update(NewModel updateNew);
    void delete(long id);
    List<NewModel> findAll();
	int getTotalItem();
}