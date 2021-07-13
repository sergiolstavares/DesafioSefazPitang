package com.desafioSefazPitang.repository;

import javax.persistence.EntityManager;

import com.desafioSefazPitang.bean.JpaResourcesBean;
import com.desafioSefazPitang.model.User;
import java.util.List;

public class UserRepository {
	
	
	

    @SuppressWarnings("unchecked")
	public List<User> getAll() throws Exception{
        EntityManager em = JpaResourcesBean.getEntityManagerFactory().createEntityManager();

        List<User> users = null;

        try{
            users = em.createQuery("from User").getResultList();
        }catch (Exception e){
            throw new Exception(e);
        }finally {
            em.close();
        }
        return users;
    }

    public boolean addUser(User user) throws  Exception{
        EntityManager em = JpaResourcesBean.getEntityManagerFactory().createEntityManager();
       
        try{
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();
            return true;
        }catch(Exception e){

            em.getTransaction().rollback();
            return false;
        }finally {
            em.close();
        }
    }

    public boolean putUser(User user) throws Exception{
        EntityManager em = JpaResourcesBean.getEntityManagerFactory().createEntityManager();

        try{
            em.getTransaction().begin();
            em.merge(user);
            em.getTransaction().commit();
            return true;
        }catch(Exception e){
            em.getTransaction().rollback();
            return false;
        }finally {
            em.close();
        }
    }

    public void delete (long id) throws Exception{
        EntityManager em = JpaResourcesBean.getEntityManagerFactory().createEntityManager();

        try{
            em.getTransaction().begin();
            User user = em.find(User.class, id);
            em.remove(user); //se n pegar trocar id por usuario
            em.getTransaction().commit();
        
        }catch (Exception e){
            em.getTransaction().rollback();

            
        }finally {
            em.close();
        }
    }

    public User findUserById(long id)throws Exception{
        User user;
        EntityManager em = JpaResourcesBean.getEntityManagerFactory().createEntityManager();

        try{
            user = em.find(User.class,id);
            return user;
        }finally {
                em.close();
        }
        

    }
}