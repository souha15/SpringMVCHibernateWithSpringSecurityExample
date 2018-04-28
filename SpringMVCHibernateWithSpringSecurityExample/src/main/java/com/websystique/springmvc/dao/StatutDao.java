package com.websystique.springmvc.dao;

import java.util.List;

import com.websystique.springmvc.model.Statut;

public interface StatutDao {

Statut findByIdStatuts(int idstatut);
	
	Statut findByIdstatut(int idstatut);
	
	void saveStatut(Statut statut);
	
	void deleteByIDStatut(int idstatut);
	
	List<Statut> findAllStatut();
}
