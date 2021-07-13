
package com.desafioSefazPitang.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.desafioSefazPitang.bean.JpaResourcesBean;
import com.desafioSefazPitang.model.Phone;
import com.desafioSefazPitang.model.User;

public class PhoneRepository {

	public void addPhone(Phone phone) throws Exception {
		EntityManager em = JpaResourcesBean.getEntityManagerFactory().createEntityManager();

		try {
			em.getTransaction().begin();
			em.persist(phone);
			em.getTransaction().commit();
		} catch (Exception e) {

			em.getTransaction().rollback();
		} finally {
			em.close();
		}

	}
	
	@SuppressWarnings("unchecked")
	public List<Phone> getAllPhonesByUser(User user) throws Exception {
		EntityManager em = JpaResourcesBean.getEntityManagerFactory().createEntityManager();

		List<Phone> phones = null;

		try {
			TypedQuery<Phone> q = em.createQuery("SELECT p FROM Phone p WHERE p.user = ?1", Phone.class)
					.setParameter(1, user);
			
			
			phones = q.getResultList();
		
		} catch (Exception e) {
			throw new Exception(e);
		} finally {
			em.close();
		}
		return phones;
	}


	
	}
	
	
