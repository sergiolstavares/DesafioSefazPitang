/*
 * package com.desafioSefazPitang.repository;
 * 
 * import java.util.List;
 * 
 * import javax.persistence.EntityManager;
 * 
 * import com.desafioSefazPitang.bean.JpaResourcesBean; import
 * com.desafioSefazPitang.model.Phone;
 * 
 * 
 * public class PhoneRepository {
 * 
 * 
 * 
 * 
 * public Long addPhone(Phone phone) throws Exception{ EntityManager em =
 * JpaResourcesBean.getEntityManagerFactory().createEntityManager();
 * 
 * try{ em.getTransaction().begin(); em.persist(phone);
 * em.getTransaction().commit(); return phone.getPhoneId(); }catch(Exception e){
 * 
 * em.getTransaction().rollback(); return 1023231323213232L; }finally {
 * em.close(); }
 * 
 * 
 * }
 * 
 * 
 * 
 * public List<Phone> findPhonesByUserId(long userId)throws Exception{
 * List<Phone> phones; EntityManager em =
 * JpaResourcesBean.getEntityManagerFactory().createEntityManager();
 * 
 * try{ phones =
 * em.createQuery("FROM Phone WHERE userId = :userId ").setParameter("phoneId",
 * userId).getResultList(); return phones; }finally { em.close(); } } }
 */